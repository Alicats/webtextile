package cn.ndky.webtextile.controller.sys;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.service.sys.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 初始化所有企业负责人列表
     * @return
     */
    @GetMapping("/initEnterpriseUserTable")
    public RespObj initEnterpriseUserTable(){
        return userService.initEnterpriseUserTable();
    }


}
