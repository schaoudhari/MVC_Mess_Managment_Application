package org.SMMess.admin.repository;

import org.SMMess.admin.config.DBConfig;
import org.SMMess.admin.model.userModel;

public class userRepositoryImpl extends DBConfig implements userRepository {
	public int uid;
	public int aid;
	public int getUserId() {
		try {
			stmt = conn.prepareStatement("select max(uid) from userregister");
			rs = stmt.executeQuery();
			if (rs.next()) {
				uid = rs.getInt(1);
			}
//			System.out.println("ind id");
			return ++uid;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in generating userId " + e);
			return -1;
		}
	}

	@Override
	public boolean isAddNewUser(userModel model) {
		try {
			uid = this.getUserId();
//			System.out.println("geting id "+uid);
			stmt = conn.prepareStatement("insert into userregister values(?,?,?,?,?)");
			stmt.setInt(1, uid);
			stmt.setString(2, model.getName());
			stmt.setString(3, model.getEmail());
			stmt.setString(4, model.getContact());
			stmt.setInt(5, model.getAge());
//			System.out.println("now executing");
			int value = stmt.executeUpdate();
			return value > 0 ? true : false;

		} catch (Exception e) {
			System.out.println("Error is ragistration" + e);
			return false;
		}
	}

	@Override
	public int checkUserLogin(String email, String pass) {
		try {
			stmt = conn.prepareStatement("select * from userregister where email=? and unumber=?");
			stmt.setString(1, email);
			stmt.setString(2, pass);
			rs = stmt.executeQuery();
			userModel m = new userModel();
			if (rs.next()) {
				return rs.getInt(1);
			} else {
				return 0;
			}

		} catch (Exception e) {
			System.out.println("Exception is adminLogin" + e);
			return 0;
		}
	}

	@Override
	public userModel getProfile(int userId) {
		try {
			stmt=conn.prepareStatement("select * from userregister where uid=?");
			stmt.setInt(1, userId);
			rs=stmt.executeQuery();
			userModel model = null;
			if(rs.next()) {
				model=new userModel();
				model.setUid(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setEmail(rs.getString(3));
				model.setContact(rs.getString(4));
				model.setAge(rs.getInt(5));
				
			}
			return model;
		} catch (Exception e) {
			System.out.println("Error is getprofile"+e);
			return null;
		}
	}

	@Override
	public boolean updateUserProfile(userModel model) {
		try {
			stmt=conn.prepareStatement("update userregister set uname=?,unumber=?,uage=? where email=?");
			stmt.setString(1, model.getName());
			stmt.setString(2, model.getContact());
			stmt.setInt(3, model.getAge());
			stmt.setString(4, model.getEmail());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			System.out.println("Error in userUpdate profile is"+e);
			return false;
		}
	}
	
	public int getAttendanceId() {
		
		try {
			stmt = conn.prepareStatement("select max(attend_id) from attendance");
			rs = stmt.executeQuery();
			if (rs.next()) {
				aid = rs.getInt(1);
			}
//			System.out.println("ind id");
			return ++aid;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in generating userId " + e);
			return -1;
		}
	}

	@Override
	public boolean addUserAttendance(int uid, String date, String status) {
		try {
			int aid=this.getAttendanceId();
			stmt=conn.prepareStatement("insert into attendance values(?,?,?,?)");
			stmt.setInt(1, aid);
			stmt.setInt(2, uid);
			stmt.setString(3, date);
			stmt.setString(4, status);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in adduserAttendance"+e);
		}
		return false;
	}

}
