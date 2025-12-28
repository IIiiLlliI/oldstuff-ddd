package com.oldstuff.cola.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.oldstuff.cola.user.UserAddressDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserAddressMapper extends BaseMapper<UserAddressDO> {

    @Select("SELECT * FROM public.user_address WHERE user_id = #{userID}")
    List<UserAddressDO> getAddressListByUserID(String userID);

    @Select("SELECT * FROM public.user_address WHERE id = #{id} and user_id = #{userID}")
    UserAddressDO selectByIdAndUserID(String id, String userID);

    Integer deleteByIdsAndUserID(String[] idArray, String userID);
}
