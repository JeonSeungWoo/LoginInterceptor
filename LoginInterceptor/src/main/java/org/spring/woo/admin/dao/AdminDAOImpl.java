package org.spring.woo.admin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.spring.woo.main.domain.Criteria;
import org.spring.woo.user.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession session;
	
	@Override
	public List<UserVO> userList(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("admin.userList",cri);
	}

	@Override
	public int userListCount() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("admin.userListCount");
	}

	@Override
	public void userUpdate(UserVO vo) throws Exception {
		session.update("admin.userUpdate",vo);
		
	}

	@Override
	public void authUpdate(UserVO vo) throws Exception {
		session.update("admin.authUpdate",vo);
	}

	@Override
	public void userDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		session.delete("admin.userDelete",id);
	}

	@Override
	public UserVO userRead(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("admin.userRead",id);
	}



}
