```java

public class UserServiceImpl implements UserServiceI {

    @Autowired
    UserMapper userMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Result<String> login(UserLoginCmd userLoginCmd) {
        // 1. 查询用户是否存在
        UserDO user = userMapper.getByUsername(userLoginCmd.getUsername());
        if (user == null) {
            throw new BusinessException(BusinessCode.USER_NOT_FOUND);
        }
        // 2. 用户存在，比较密码
        if (!passwordEncoder.matches(userLoginCmd.getPassword(), user.getPassword())) {
            throw new BusinessException(BusinessCode.USER_PASSWORD_ERROR);
        }
        // 3. 密码正确，查看账号状态
        if (user.getStatus().equals(1)) {
            throw new BusinessException(BusinessCode.USER_NOT_ACTIVE);
        }
        else if (user.getStatus().equals(2)) {
            throw new BusinessException(BusinessCode.USER_DISABLED);
        }
        // 4. 用户登录，生成token
        
        return Result.success();
    }
}


    @Override
    public Result<String> login(UserLoginCmd userLoginCmd) {
        // 1. 查询用户，判断是否存在
        UserDO userDO = userMapper.getByUsername(userLoginCmd.getUsername());
        if (userDO == null) {
            throw new BusinessException(BusinessCode.USER_NOT_FOUND);
        }
        // 2. 用户存在，比较密码
        User user = new User(
                userDO.getId(),
                new Account(userDO.getUsername(), userDO.getPassword(), userDO.getPhone(), userDO.getEmail()),
                new Profile(userDO.getName(), userDO.getAvatar(), userDO.getMerchantAuth()),
                new Status(userDO.getStatus(), userDO.getLastLogin(), userDO.getLastReply()),
                new Stats(userDO.getOrderNum(), userDO.getScore()),
                userDO.getCreateTime(),
                userDO.getUpdateTime()
        );
        if (!user.getAccount().checkPassword(userLoginCmd.getPassword(), userGateway)) {
            throw new BusinessException(BusinessCode.USER_PASSWORD_ERROR);
        }
        // 3. 密码正确，查看账号状态
        if (user.getStatus().getStatus().equals(1)) {
            throw new BusinessException(BusinessCode.USER_NOT_ACTIVE);
        }
        else if (user.getStatus().getStatus().equals(2)) {
            throw new BusinessException(BusinessCode.USER_DISABLED);
        }
        // 4. 用户登录，生成token

        return Result.success();
    }
```