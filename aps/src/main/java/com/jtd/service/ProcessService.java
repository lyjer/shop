package com.jtd.service;

import com.jtd.model.Process;

public class ProcessService {
	
	private Process dao = new Process();

	public int findHandler(int currentHandler) {
		// TODO Auto-generated method stub
		Process process =  (Process) dao.findFirst("select * from t_base_process where current_post=?", currentHandler);
		return process.getInt("next_post");
	}
	

}
