package cn.ndky.webtextile.controller;

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

    @GetMapping("/userInfo")
    public String userInfo(){
        return "userInfo";
    }


}
