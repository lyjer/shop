package com.jtd.controller.reciept;

import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.jtd.model.ActiveUser;
import com.jtd.model.Advice;
import com.jtd.model.Reciept;
import com.jtd.service.RecieptService;

public class RecieptController extends Controller{
	
	static RecieptService service = new RecieptService();
	
	public void list(){
		ActiveUser activeUser = getSessionAttr("activeUser");
		List<Reciept> list = service.findAll(activeUser.getUserId());
		setAttr("reciepts", list);
		render("reciept_list.jsp");
	}
	
	public void delete(){
		System.out.println("=============="+getParaToInt(0));
		service.delete(getParaToInt(0));
		redirect("/reciept/list");
	}
	
	public void add(){
		render("reciept_add.jsp");
	}
	
	public void doAdd(){
		//获取处理人
		ActiveUser activeUser = (ActiveUser) getSession().getAttribute("activeUser");
		Reciept reciept = getModel(Reciept.class);
		reciept.set("apply_date", new Date()).set("handler", activeUser.getUserId());
		reciept.save();
		redirect("/reciept/list");
	}
	
	public void update(){
		
		//System.out.println("=============="+getParaToInt(0));
		Reciept reciept = service.findById(getParaToInt(0));
		setAttr("reciept", reciept);
		render("reciept_update.jsp");
	}
	
	public void doUpdate(){
		Reciept reciept = getModel(Reciept.class);
		reciept.update();
		redirect("/reciept/list");
	}
	
	public void apply(){
		
		
		service.applyById(getParaToInt(0));
		redirect("/reciept/approve");
	}
	
	//审批
	public void approve(){
	
		ActiveUser activeUser = (ActiveUser) getSession().getAttribute("activeUser");
		int userId = activeUser.getUserId();
		//根据用户id查询对应的角色id去查询需处理的表单
		List<Reciept>  list  = service.findApproveList(userId);
		setAttr("reciepts", list);
		render("reciept_approve_list.jsp");
	}
	
	//添加审批意见
	public void advice(){
		Reciept reciept = service.findById(getParaToInt(0));
		//表单信息
		setAttr("reciept", reciept);
		//意见信息
		List<Advice> list = Advice.dao.find("select * from t_advice where bill_id=?",getParaToInt(0) );
		setAttr("advices", list);
		render("reciept_advice.jsp");
	}
	//保存意见
	public void doAdvice(){
		
		Advice advice = getModel(Advice.class);
		ActiveUser activeUser = (ActiveUser) getSession().getAttribute("activeUser");
		advice.set("approver", activeUser.getUserId()).set("type", 5);
		
		advice.save();
		
		redirect("/reciept/approve");
		
	}
	
	//查询审批情况
	public void findApprove(){
		ActiveUser activeUser = getSessionAttr("activeUser");
		List<Reciept> list = service.findApprove(activeUser.getUserId());
		setAttr("reciepts", list);
		render("reciept_agree.jsp");
	}
	
	
	
}
