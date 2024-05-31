package org.SMMess.admin.repository;

import org.SMMess.admin.model.menuModel;
import org.SMMess.admin.model.userModel;

public interface userRepository {
	public boolean isAddNewUser(userModel model);

	public int checkUserLogin(String email,String pass);

	public userModel getProfile(int userId);

	public boolean updateUserProfile(userModel model);

	public boolean addUserAttendance(int uid, String date, String status);
	
}
