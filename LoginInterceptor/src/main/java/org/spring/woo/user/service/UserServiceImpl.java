package org.spring.woo.user.service;

import javax.inject.Inject;

import org.spring.woo.user.dao.UserDAO;
import org.spring.woo.user.domain.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	UserDAO dao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	
	@Override
	public UserVO login(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.login(vo);
	}

	@Override
	public void loginCreate(UserVO vo) throws Exception {
		
		//¾ÏÈ£È­
		String encryptPassword = passwordEncoder.encode(vo.getUserpw());
		vo.setUserpw(encryptPassword);
		
		dao.loginCreate(vo);
		
	}

	@Override
	public Integer checkId(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkId(vo);
	}

	
	
}
