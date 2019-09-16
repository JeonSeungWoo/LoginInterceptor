package org.spring.woo.admin.controller;

import javax.inject.Inject;

import org.spring.woo.admin.service.AdminService;
import org.spring.woo.main.domain.Criteria;
import org.spring.woo.main.domain.Paging;
import org.spring.woo.user.domain.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@RequestMapping("/admin/*")
@Controller
public class AdminController {
	@Inject
	private AdminService service;
	
	
	
	// 유저의 List를 보여준는 페이지
	 @RequestMapping(value="/userList",method=RequestMethod.GET)
	    public String userList(Model model, Criteria cri,@RequestParam("page")int page)
	       throws Exception{
		    System.out.println("page : " + page);
		    cri.setPage(page);
		    System.out.println(cri);
			model.addAttribute("list", service.userList(cri));
			System.out.println(service.userList(cri));
		    System.out.println("l : " + page);
			model.addAttribute("Paging", new Paging(page, service.userListCount()));
	        System.out.println("l : " + service.userListCount());
			return "/admin/userList";
	 }
	 @RequestMapping(value = "/userRead", method = RequestMethod.GET)
		public void userRead(Model model, @RequestParam("id") String id) throws Exception {

			model.addAttribute("vo", service.userRead(id));

		}

		@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
		public String userUpdate(Model model, UserVO vo) throws Exception {

			service.userUpdate(vo);;

			return "redirect:/admin/userList?page=1";

		}

		@RequestMapping(value = "/userDelete", method = RequestMethod.POST)
		public String userDelete(Model model, String id) throws Exception {

			service.userDelete(id);;

			return "redirect:/admin/userList?page=1";

		}

	

		

}
