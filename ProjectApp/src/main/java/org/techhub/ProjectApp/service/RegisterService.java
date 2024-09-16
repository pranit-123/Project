package org.techhub.ProjectApp.service;

import org.techhub.ProjectApp.model.Register;

import java.util.List;

import org.techhub.ProjectApp.model.AddNotice;
import org.techhub.ProjectApp.model.Login;

public interface RegisterService {
	
    public boolean isAddRegister(Register register);
   
    public String getRoleUsingEmailAndPassword(String email,String password);
    
	public boolean isValidateUser(Login login);

	public boolean isAddNotice(AddNotice notice);
 
	public List<AddNotice> getAllNotices();
	
	public List<AddNotice> getAllNoticesRoleWise(String role);
	
	public boolean DeleteEmployeeByid(int id);
	
	void updateNoticeByid(AddNotice notice);
	
	public List<AddNotice> getDataById(int id);
	
	public Register getUserProfileByEmail(Register register);
	
	public List<Register> getAllUsers();
	
	public List<AddNotice> searchAllNoticesRoleWise(String role);
  
	public boolean DeleteUserByEmail(String email);
	
	void updateUserByEmail(Register register);

	public List<Register> getDataByEmail(String email);

}
