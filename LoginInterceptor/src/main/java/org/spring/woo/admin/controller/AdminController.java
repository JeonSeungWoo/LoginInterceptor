package org.spring.woo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@RequestMapping("/admin/*")
@Controller
public class AdminController {
	
	// ������ List�� �����ش� ������
	 @RequestMapping(value="/userList",method=RequestMethod.GET)
	    public String loginForm(){
	        return "/admin/userList";
	 }
	 
	 
	 
		

}
