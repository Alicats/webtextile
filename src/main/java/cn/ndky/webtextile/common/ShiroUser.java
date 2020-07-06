package cn.ndky.webtextile.common;

import cn.ndky.webtextile.pojo.User;
import lombok.Data;

import java.util.List;

@Data
public class ShiroUser {

    private User user;
    private List<String> roles;
    private List<String> perms;
    private List<String> roleDesc;
}
