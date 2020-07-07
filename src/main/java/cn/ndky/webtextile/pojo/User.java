package cn.ndky.webtextile.pojo;

import lombok.Data;

@Data
public class User {
    private String userId;
    private String password;
    private String username;
    private String address;
    private String email;
    private String telephone;
    private String roleId;
    private int enterId;
    private String remark;
    private Data registerTime;

}
