package cn.ndky.webtextile.controller.sys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RouterController {

    @GetMapping("/index")
    public String index(){
        return "index";
    }

    @GetMapping("/welcome")
    public String login(){
        return "login";
    }

    @GetMapping("/admin/enterpriseManage")
    public String enterpriseManage(){
        return "admin/user/enterpriseManage";
    }

    @GetMapping("/admin/enterManage")
    public String enterManage(){
        return "admin/enter/enterManage";
    }
}
