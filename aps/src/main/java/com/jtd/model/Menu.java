package com.jtd.model;

import java.util.ArrayList;
import java.util.List;


public class Menu {
	
	private Integer menuId;
	
	private String menuName;
	


	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	private List<SysPermission> list=new ArrayList<SysPermission>();//二级菜单

	public List<SysPermission> getList() {
		return list;
	}

	public void setList(List<SysPermission> list) {
		this.list = list;
	}


}