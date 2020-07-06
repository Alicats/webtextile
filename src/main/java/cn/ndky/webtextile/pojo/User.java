package cn.ndky.webtextile.pojo;

import lombok.Data;

@Data
public class User {
    private String userId;
    private String password;
    private String name;
    private Integer status;
}
