package com.oldstuff.cola.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.oldstuff.cola.domain.user.User;
import com.oldstuff.cola.user.UserDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserMapper extends BaseMapper<UserDO> {

    @Select("SELECT * FROM public.user WHERE username = #{username}")
    UserDO getByUsername(String username);

    @Select("SELECT CASE WHEN COUNT(*) > 0 THEN TRUE ELSE FALSE END FROM public.user WHERE email = #{email}")
    Boolean existsByEmail(String email);
    @Select("SELECT CASE WHEN COUNT(*) > 0 THEN TRUE ELSE FALSE END FROM public.user WHERE phone = #{phone}")
    Boolean existsByPhone(String phone);

}
