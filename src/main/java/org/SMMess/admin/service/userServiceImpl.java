package org.SMMess.admin.service;

import org.SMMess.admin.model.userModel;
import org.SMMess.admin.repository.userRepository;
import org.SMMess.admin.repository.userRepositoryImpl;

public class userServiceImpl implements userService{
	userRepository uRepo=new userRepositoryImpl();
	@Override
	public boolean isAddNewUser(userModel model) {
		
		return uRepo.isAddNewUser(model);
	}
	@Override
	public int checkUserLogin(String email,String pass) {
		return uRepo.checkUserLogin(email, pass);
	}
	@Override
	public userModel getProfile(int userId) {
		// TODO Auto-generated method stub
		return uRepo.getProfile(userId);
	}
	@Override
	public boolean updateUserProfile(userModel model) {
		// TODO Auto-generated method stub
		return uRepo.updateUserProfile(model);
	}
	@Override
	public boolean addUserAttendance(int uid, String date, String status) {
		// TODO Auto-generated method stub
		return uRepo.addUserAttendance(uid,date,status);
	}
	
}
