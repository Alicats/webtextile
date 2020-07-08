package cn.ndky.webtextile.mapper;

import cn.ndky.webtextile.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {


    public User getUserByUserId(String userId);

    public List<User> getUserListByRoleId(String roleId);

    public void delAllUser(String[] userIds);

    public void delUser(String userId);

    public void resetPassword(String userId, String password);


}
