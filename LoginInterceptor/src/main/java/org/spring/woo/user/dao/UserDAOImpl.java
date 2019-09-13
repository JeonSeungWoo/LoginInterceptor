package org.spring.woo.user.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.spring.woo.user.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

	@Inject
	SqlSession session;
	
	@Override
	public UserVO login(UserVO vo) {
		return session.selectOne("user.login",vo);
	}

}
