package org.SMMess.admin.service;

import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.model.userModel;

public interface userService {
	public boolean isAddNewUser(userModel model);
	public int checkUserLogin(String email,String pass);
	public userModel getProfile(int userId);
	public boolean updateUserProfile(userModel model);
	public boolean addUserAttendance(int uid, String date, String status);
}
