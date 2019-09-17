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

	@Inject // byType으로 자동 주입
	UserService service;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;


	// 로그인 폼을 띄우는 부분
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/loginForm"; // /login/loginForm.jsp를 띄움.
	}// end of loginForm

	// 로그인 처리하는 부분
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(HttpSession session, UserVO dto) {
	
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("login"); // 기존값을 제거해 준다.
		}

		//입력한 페스워드
		String inpw = dto.getUserpw();
		//입력한 페스워드 암호화
		String encryptPassword = passwordEncoder.encode(inpw);
		//암호화된 것을 저장.
		dto.setUserpw(encryptPassword);
		
		//로그인 정보를 가져옴.
		UserVO vo = service.login(dto);
		
		
		//nullCheck
		if(vo !=null) {
			// 등어온 pw 와 DB의 가 같으면
			if (passwordEncoder.matches(inpw, vo.getUserpw())) {
				
				// 권한 별 설정.
				//0은 권한이 없는 사용자.
				if (vo.getAuth().equals("0")) {
					returnURL = "redirect:/user/loginConfirm?check=0";
			    //5는 admin
				} else if (vo.getAuth().equals("5")) {
					session.setAttribute("login", vo);
					returnURL = "redirect:/user/loginConfirm?check=5";
				} else {
					// 세션에 로그인한 객체 저장
					session.setAttribute("login", vo);
					returnURL = "redirect:/user/loginConfirm?check=1";
				}

			} else { 
				// 로그인에 실패한 경우
				returnURL = "redirect:/user/loginConfirm?check=99";
			}

		}else{
			returnURL = "redirect:/user/loginConfirm?check=99";
		}
	
		return returnURL; // 위에서 설정한 returnURL 을 반환해서 이동시킴
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


	// 로그아웃 하는 부분
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션 전체를 날려버림
		// session.removeAttribute("login"); // 하나씩 하려면 이렇게 해도 됨.
		return "redirect:/user/login"; // 로그아웃 후 게시글 목록으로 이동하도록...함
	}

}
