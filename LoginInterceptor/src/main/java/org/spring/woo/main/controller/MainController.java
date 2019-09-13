package org.spring.woo.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/main/*")
@Controller
public class MainController {


	
	
    @RequestMapping(value="/mainPage",method=RequestMethod.GET)
    public String loginForm(){
        return "/main/mainPage";
    }
	
}
