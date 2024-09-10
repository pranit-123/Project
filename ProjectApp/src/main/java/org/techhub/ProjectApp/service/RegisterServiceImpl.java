package org.techhub.ProjectApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.ProjectApp.model.AddNotice;
import org.techhub.ProjectApp.model.Login;
import org.techhub.ProjectApp.model.Register;
import org.techhub.ProjectApp.repository.RegisterRepo;

@Service("regService")
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterRepo regRepo;
	
	@Override
	public boolean isAddRegister(Register register) {
		
		return regRepo.isAddRegister(register);
	}

	@Override
	public boolean isValidateUser(Login login) {
		
		return regRepo.isValidateUser(login);
	}

	@Override
	public boolean isAddNotice(AddNotice notice) {
		
		return regRepo.isAddNotice(notice);
	}

	@Override
	public List<AddNotice> getAllNotices() {
		
		return regRepo.getAllNotices();
	}

	@Override
	public boolean DeleteEmployeeByid(int id) {
		return regRepo.DeleteEmployeeByid(id);
	
	}
	
	public void updateNoticeByid(AddNotice notice) {
		 regRepo.updateNoticeByid(notice);
	}

	@Override
	public List<AddNotice> getDataById(int id) {
		
		return regRepo.getDataById(id);
	}
	@Override
    public Register getUserProfileByEmail(Register register) {
        return regRepo.getUserProfileByEmail(register);
    }

	@Override
	public List<Register> getAllUsers() {
	
		return regRepo.getAllUsers();
	}
}
