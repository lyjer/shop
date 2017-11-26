package com.jtd.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.jtd.model.ActiveUser;
import com.jtd.model.Menu;
import com.jtd.model.SysPermission;
import com.jtd.model.User;
import com.jtd.service.SysService;

public class SysServiceImpl implements SysService{
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	private static final User user = new User().dao();
	
	private static final SysPermission sysPermission = new SysPermission().dao();

	public ActiveUser authenticat(String username, String password)
			throws Exception {
		//根据用户名查询数据库
		User user = this.findSysUserByUserName(username);
		
		if(user == null){
			//抛出异常
			throw new Exception("用户账号不存在");
		}

		String dbpassword=user.getStr("password");
		
		//对输入的密码 和数据库密码 进行比对，如果一致，认证通过
		if(!password.equalsIgnoreCase(dbpassword)){
			//抛出异常
			throw new Exception("用户名或密码 错误");
		}
		
		//得到用户id
		Integer userid = user.getInt("user_id");
		//根据用户id查询菜单 
		List<SysPermission> menus =this.findMenuListByUserId(userid);
		//根据用户id查询权限url
		List<SysPermission> permissions = this.findPermissionListByUserId(userid);
		
		//认证通过，返回用户身份信息
		ActiveUser activeUser = new ActiveUser();
		activeUser.setUserId(user.getInt("user_id"));
		activeUser.setUserName(user.getStr("user_name"));
		activeUser.setRealName(user.getStr("real_name"));
		
		//放入权限范围的菜单和url
		activeUser.setMenus(menus);
		activeUser.setPermissions(permissions);
		
		return activeUser;
	}

	public User findSysUserByUserName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return user.findFirst("select * from t_base_user where user_name =?",userName);
	}

	public List<SysPermission> findMenuListByUserId(Integer userid)
			throws Exception {
	           String sql="select * from t_base_permission where type='menu' and permission_id in("
        + "SELECT permission_id FROM t_base_role_permission WHERE role_id IN ("
		+ "SELECT t.role_id FROM t_base_user_role t WHERE t.user_id = ?))";    
		return sysPermission.find(sql, userid);
	}

	public List<SysPermission> findPermissionListByUserId(Integer userid)
			throws Exception {
		String sql="select * from t_base_permission where type='examine' and permission_id in("
		        + "SELECT permission_id FROM t_base_role_permission WHERE role_id IN ("
				+ "SELECT t.role_id FROM t_base_user_role t WHERE t.user_id = ?))";    
				return sysPermission.find(sql, userid);
	}


}
