package com.oldstuff.cola.domain.user;

import com.oldstuff.cola.domain.user.enums.UserStatus;
import com.oldstuff.cola.domain.user.gateway.UserGateway;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
public class User {
	private String id;
	private Account account;	// 账号信息
	private Profile profile;	// 用户信息
	private Status status;		// 用户状态
	private Stats stats;		// 统计数据
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;
	private List<UserAddress> addresses;

	public void login(String inputPassword, UserGateway userGateway) {
		account.checkPassword(inputPassword, userGateway);
		status.checkUserActive();
	}

	public void update(String username, String name, String avatar) {
		updatedAt = LocalDateTime.now();
		if (username != null) account.setUsername(username);
		if (name != null) profile.setName(name);
		if (avatar != null) profile.setAvatar(avatar);
	}

	public static User registerByEmail(String email, String encodedPassword, String name, UserGateway userGateway) {
		Account.checkEmailExist(email, userGateway);

		Account account = Account.builder()
				.email(email)
				.password(encodedPassword)
				.build();

		return User.buildNewUser(account, name);
	}

	public static User registerByPhone(String phone, String encodedPassword, String name, UserGateway userGateway) {
		Account.checkPhoneExist(phone, userGateway);

		Account account = Account.builder()
				.phone(phone)
				.password(encodedPassword)
				.build();

		return User.buildNewUser(account, name);
	}

	private static User buildNewUser(Account account, String name) {
		Profile profile = Profile.builder()
				.name(name)
				.build();

		Status status = Status.builder()
				.status(UserStatus.ACTIVE)
				.build();

		Stats stats = Stats.builder()
				.build();

		LocalDateTime now = LocalDateTime.now();

		return User.builder()
				.account(account)
				.profile(profile)
				.status(status)
				.stats(stats)
				.createdAt(now)
				.updatedAt(now)
				.build();
	}

}
