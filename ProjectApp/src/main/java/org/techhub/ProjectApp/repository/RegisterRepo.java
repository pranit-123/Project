package org.techhub.ProjectApp.repository;

import org.techhub.ProjectApp.model.Register;

import java.util.List;

import org.techhub.ProjectApp.model.AddNotice;
import org.techhub.ProjectApp.model.Login;

public interface RegisterRepo {
     
	public boolean isAddRegister(Register register);
	
	public boolean isValidateUser(Login login);
	
	public boolean isAddNotice(AddNotice notice);
	
	public List<AddNotice> getAllNotices();

	public boolean DeleteEmployeeByid(int id);
	
	void updateNoticeByid(AddNotice notice);
	
	public List<AddNotice> getDataById(int id);

	public Register getUserProfileByEmail(Register register);
	
	public List<Register> getAllUsers();
	
}
