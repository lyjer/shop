package com.jtd.service;

import com.jtd.model.User;

/**
 *  
 * LoginService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class LoginService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	private static final User dao = new User().dao();
	
	public User findByUsernameAndPassword(String username,String password) {
		return dao.findFirst("select * from t_base_user where username =? and password=?",username,password);
	}
	
}
