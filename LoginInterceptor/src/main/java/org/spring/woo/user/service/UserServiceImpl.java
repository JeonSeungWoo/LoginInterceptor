package org.spring.woo.user.service;

import javax.inject.Inject;

import org.spring.woo.user.dao.UserDAO;
import org.spring.woo.user.domain.UserVO;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	UserDAO dao;
	
	@Override
	public UserVO login(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.login(vo);
	}

	
	
}
