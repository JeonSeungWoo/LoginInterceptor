package org.spring.woo.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.spring.woo.user.domain.UserVO;
import org.spring.woo.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/user/*")
@Controller
public class UserController {

	@Inject // byType���� �ڵ� ����
	UserService service;

	// �α��� ���� ���� �κ�
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/loginForm"; // /login/loginForm.jsp�� ���.
	}// end of loginForm

	// �α��� ó���ϴ� �κ�
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(HttpSession session, UserVO dto) {
		System.out.println("test");
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			// ������ login�̶� ���� ���� �����Ѵٸ�
			session.removeAttribute("login"); // �������� ������ �ش�.
		}

		// �α����� �����ϸ� UserVO ��ü�� ��ȯ��.
		UserVO vo = service.login(dto);
		System.out.println("vo : " + vo);

		// id �� password�� ������
		if (vo != null) {
			// ���� �� ����.
			//0�� ������ ���� �����.
			if (vo.getAuth() == 0) {
				returnURL = "redirect:/user/loginConfirm?check=0";
		    //5�� admin
			} else if (vo.getAuth() == 5) {
				session.setAttribute("login", vo);
				returnURL = "redirect:/user/loginConfirm?check=5";
			} else {
				// ���ǿ� �α����� ��ü ����
				session.setAttribute("login", vo);
				returnURL = "redirect:/user/loginConfirm?check=1";
			}

		} else { // �α��ο� ������ ���+
			returnURL = "redirect:/user/loginConfirm?check=99";
//	            returnURL ="redirect:/user/login"; // �α��� ������ �ٽ� ������ ��
		}

		return returnURL; // ������ ������ returnURL �� ��ȯ�ؼ� �̵���Ŵ
	}

	@RequestMapping(value = "/loginConfirm", method = RequestMethod.GET)
	public String loginConfirm(@RequestParam("check") int check) throws Exception {

		return "/user/loginConfirm";
	}

	// �α׾ƿ� �ϴ� �κ�
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // ���� ��ü�� ��������
		// session.removeAttribute("login"); // �ϳ��� �Ϸ��� �̷��� �ص� ��.
		return "redirect:/user/login"; // �α׾ƿ� �� �Խñ� ������� �̵��ϵ���...��
	}

}
