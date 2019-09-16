package org.spring.woo.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.spring.woo.admin.dao.AdminDAO;
import org.spring.woo.main.domain.Criteria;
import org.spring.woo.user.domain.UserVO;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	@Inject
	private AdminDAO dao;

	@Override
	public List<UserVO> userList(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.userList(cri);
	}

	@Override
	public int userListCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.userListCount();
	}

	@Override
	public void userUpdate(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.userUpdate(vo);
	}

	@Override
	public void authUpdate(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.authUpdate(vo);
	}

	@Override
	public void userDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.userDelete(id);	
	}

	@Override
	public UserVO userRead(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userRead(id);
	}
	
	
	

}
