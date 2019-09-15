package org.spring.woo.user.dao;

import org.spring.woo.user.domain.UserVO;

public interface UserDAO {
	public UserVO login(UserVO vo);
	public void loginCreate(UserVO vo) throws Exception;
	public Integer checkId(UserVO vo) throws Exception;

}
