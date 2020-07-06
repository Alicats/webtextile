package cn.ndky.webtextile.mapper;

import cn.ndky.webtextile.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {


    public User getUserByUserId(String userId);

    public List<String> getRoleIdsByUserId(String userId);

    public List<String> getRoleNamesByUserId(String userId);
}
