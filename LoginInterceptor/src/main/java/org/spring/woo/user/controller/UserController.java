package org.spring.woo.user.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.spring.woo.user.domain.UserVO;
import org.spring.woo.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;


	// �α��� ���� ���� �κ�
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/loginForm"; // /login/loginForm.jsp�� ���.
	}// end of loginForm

	// �α��� ó���ϴ� �κ�
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(HttpSession session, UserVO dto) {
	
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			// ������ login�̶� ���� ���� �����Ѵٸ�
			session.removeAttribute("login"); // �������� ������ �ش�.
		}

		//�Է��� �佺����
		String inpw = dto.getUserpw();
		//�Է��� �佺���� ��ȣȭ
		String encryptPassword = passwordEncoder.encode(inpw);
		//��ȣȭ�� ���� ����.
		dto.setUserpw(encryptPassword);
		
		//�α��� ������ ������.
		UserVO vo = service.login(dto);
		
		
		//nullCheck
		if(vo !=null) {
			// ���� pw �� DB�� �� ������
			if (passwordEncoder.matches(inpw, vo.getUserpw())) {
				
				// ���� �� ����.
				//0�� ������ ���� �����.
				if (vo.getAuth().equals("0")) {
					returnURL = "redirect:/user/loginConfirm?check=0";
			    //5�� admin
				} else if (vo.getAuth().equals("5")) {
					session.setAttribute("login", vo);
					returnURL = "redirect:/user/loginConfirm?check=5";
				} else {
					// ���ǿ� �α����� ��ü ����
					session.setAttribute("login", vo);
					returnURL = "redirect:/user/loginConfirm?check=1";
				}

			} else { 
				// �α��ο� ������ ���
				returnURL = "redirect:/user/loginConfirm?check=99";
			}

		}else{
			returnURL = "redirect:/user/loginConfirm?check=99";
		}
	
		return returnURL; // ������ ������ returnURL �� ��ȯ�ؼ� �̵���Ŵ
	}

	@RequestMapping(value = "/loginConfirm", method = RequestMethod.GET)
	public String loginConfirm(@RequestParam("check") int check) throws Exception {

		return "/user/loginConfirm";
	}
	
	@RequestMapping(value = "/idInsertForm", method = RequestMethod.GET)
	public String idInsertForm() throws Exception {

		return "/user/idInsertForm";
	}
	
	@RequestMapping(value = "/loginCreate", method = RequestMethod.POST)
	public String loginCreate(Model model, UserVO vo) throws Exception {

		service.loginCreate(vo);

		return "redirect:/user/login";
	}
	
	
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	public void checkId(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		PrintWriter out = res.getWriter();
		
		try {
			String parmid = (req.getParameter("userid")== null)? "" : String.valueOf(req.getParameter("userid"));
			
  			UserVO vo = new UserVO();
  			vo.setUserid(parmid.trim());
  			Integer checkPoint = service.checkId(vo);
  			
  			out.print(checkPoint);
  			out.flush();
  			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			out.print("1");
			
		}

	}


	// �α׾ƿ� �ϴ� �κ�
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // ���� ��ü�� ��������
		// session.removeAttribute("login"); // �ϳ��� �Ϸ��� �̷��� �ص� ��.
		return "redirect:/user/login"; // �α׾ƿ� �� �Խñ� ������� �̵��ϵ���...��
	}

}
