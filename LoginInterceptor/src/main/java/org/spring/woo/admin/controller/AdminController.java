package org.spring.woo.admin.controller;

import java.net.URLDecoder;

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
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/*")
@Controller
public class AdminController {
	@Inject
	private AdminService service;

	// 유저의 List를 보여준는 페이지
	@RequestMapping(value = "/userList", method = RequestMethod.GET,produces="text/plain;charset=UTF-8")
	public String userList(Model model, Criteria cri, int page) throws Exception {

		
		model.addAttribute("list", service.userList(cri));
		model.addAttribute("Paging", new Paging(page, service.userListCount()));
		return "/admin/userList";
	}

	@RequestMapping(value = "/userRead", method = RequestMethod.GET)
	public String userRead(Model model, @RequestParam("userid") String userid) throws Exception {
		model.addAttribute("read", service.userRead(userid));
		return "/admin/userRead";
	}

	@ResponseBody
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST,
	produces="text/plain;charset=UTF-8")
	public String userUpdate(Model model, UserVO vo) throws Exception {

		service.userUpdate(vo);

		return "redirect:/admin/userList?page=1";

	}

	@RequestMapping(value = "/userDelete", method = RequestMethod.POST)
	public String userDelete(Model model, String id) throws Exception {

		service.userDelete(id);

		return "redirect:/admin/userList?page=1";

	}

	@RequestMapping(value = "/authUpdate", method = RequestMethod.POST,produces="text/plain;charset=UTF-8")
	public String authUpdate(Model model, UserVO vo,
		@RequestParam("userid") String userid,
		@RequestParam("auth") String auth,
		@RequestParam("page") String page
	) throws Exception {
		vo.setAuth(auth);
		vo.setUserid(userid);
		
		service.authUpdate(vo);
		return "redirect:/admin/userList?page="+ page;
	}

}
