package com.jtd.service;

import java.util.List;

import com.jtd.model.Reciept;
import com.jtd.model.SysRole;
import com.jtd.model.SysUserRole;
import com.jtd.model.User;

public class RecieptService {
	
	private static final Reciept dao  = new Reciept();
	private ProcessService processService = new ProcessService();
	public List<Reciept> findAll(int userId) {
		// TODO Auto-generated method stub
		return dao.find("select *  from t_receipt where handler = ?", 1);//1  普通员工
		//return dao.find("select *  from t_receipt ");
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	public Reciept findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	public void applyById(Integer paraToInt) {
		// TODO Auto-generated method stub
		
		int currId = dao.findById(paraToInt).getInt("handler");
		int handlerId = processService.findHandler(currId);//查找下一个处理者
		//修改处理人id
		
		Reciept reciept = dao.findById(paraToInt).set("handler",handlerId );
        if(handlerId==0){
			reciept.set("status", 1);
		}
        reciept.update();
		
	}

	public List<Reciept> findApproveList(int userId) {
		// TODO Auto-generated method stub
		List<SysUserRole> list = SysUserRole.dao.find("select * from t_base_user_role where user_id=? ", userId);
		for (SysUserRole sysUserRole : list) {
			int roleId = sysUserRole.getInt("role_id");
			if(roleId!=1){
				
				return dao.find("select * from t_receipt where handler=?", roleId);
			}
		}
		
		return null;
	}

	public List<Reciept> findApprove(Integer userId) {
		return dao.find("select *  from t_receipt where  status =?", 1);//0  普通员工 1 审批通过
	}

}
