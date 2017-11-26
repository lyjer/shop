package com.jtd.controller.login;


import com.jfinal.core.Controller;
import com.jtd.model.ActiveUser;
import com.jtd.model.User;
import com.jtd.service.LoginService;
import com.jtd.service.SysService;
import com.jtd.service.impl.SysServiceImpl;

public class LoginController extends Controller{
	
	static SysService service = new SysServiceImpl();
	
	public void index(){
		render("login.jsp");
	}
	
	public void login() throws Exception{
		User user=getModel(User.class);
		String username=user.getStr("user_name");
		String password=user.getStr("password");
		//User loginUser=service.findByUsernameAndPassword(username, password);
		ActiveUser activeUser=service.authenticat(username, password);
		
		//如果service校验通过，将用户身份记录到session
		setSessionAttr("activeUser",activeUser);
		
		redirect("/index");
	
	}
	
	public void loginOut(){
		 getSession().invalidate();
		 render("login.jsp");
		
	}


}
