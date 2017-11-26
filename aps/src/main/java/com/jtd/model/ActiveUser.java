package com.jtd.model;

import java.io.Serializable;
import java.util.List;

public class ActiveUser implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer userId;//用户id（主键）
	private String userName;// 用户名称
	private String realName;// 真实姓名

	private List<SysPermission> menus;// 菜单
	private List<SysPermission> permissions;// 权限

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	

	

	public List<SysPermission> getMenus() {
		return menus;
	}

	public void setMenus(List<SysPermission> menus) {
		this.menus = menus;
	}

	public List<SysPermission> getPermissions() {
		return permissions;
	}

	public void setPermissions(List<SysPermission> permissions) {
		this.permissions = permissions;
	}

	
}
