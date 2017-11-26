package com.jtd.service;

import java.util.List;

import com.jtd.model.ActiveUser;
import com.jtd.model.SysPermission;
import com.jtd.model.User;

/**
 * 
 * <p>Title: SysService</p>
 * <p>Description: 认证授权服务接口</p>
 *  
 * @author	chenhui
 * @date	2017-10-27
 * @version 1.0
 */
public interface SysService {
	
	//根据用户的身份和密码 进行认证，如果认证通过，返回用户身份信息
	public ActiveUser authenticat(String userName,String password) throws Exception;
	
	//根据用户账号查询用户信息
	public User findSysUserByUserName(String userName)throws Exception;
	
	//根据用户id查询权限范围的菜单
	public List<SysPermission> findMenuListByUserId(Integer userid) throws Exception;
	
	//根据用户id查询权限范围的url
	public List<SysPermission> findPermissionListByUserId(Integer userid) throws Exception;
}
