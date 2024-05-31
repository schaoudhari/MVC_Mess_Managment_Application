package org.SMMess.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.SMMess.admin.config.DBConfig;
import org.SMMess.admin.model.BillModel;
import org.SMMess.admin.model.BreakFastModel;
import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.model.menuModel;

public class adminRepositoryImpl extends DBConfig implements adminRepository{

	@Override
	public boolean checkAdminLogin(adminModel model) {
		try {
			stmt=conn.prepareStatement("select * from adminregister");
			rs=stmt.executeQuery();
			boolean b=false;
			while(rs.next()) {
				String user=rs.getString(1);
				String pass=rs.getString(2);
				if(model.getUname().equals(user) && model.getPass().equals(pass)) {
					b=true;
				}
			}
			return b;
		} catch (Exception e) {
			System.out.println("Exception is adminLogin"+e);
		}
		return false;
	}
	private int getCandidateId() {
		int cid=0;
		try {
			stmt=conn.prepareStatement("select max(id) from addcandidate;");
			rs=stmt.executeQuery();
			if(rs.next()) {
				cid=rs.getInt(1);
			}
			System.out.println("ind id"+cid);
			return ++cid;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in generating userId "+e);
			return -1;
		}
	}
	private int getattendanceId() {
		int cid=0;
		try {
			stmt=conn.prepareStatement("select max(attend_id) from markattendance;");
			rs=stmt.executeQuery();
			if(rs.next()) {
				cid=rs.getInt(1);
			}
			System.out.println("ind id"+cid);
			return ++cid;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in generating userId "+e);
			return -1;
		}
	}


	@Override
	public boolean addCandidate(candidateModel model) {
		try {
			int cid=this.getCandidateId();
			System.out.println(cid);
			stmt=conn.prepareStatement("insert into addcandidate values(?,?,?,?,?,?)");
			stmt.setInt(1, cid);
			stmt.setString(2, model.getName());
			stmt.setString(3, model.getContact());
			stmt.setString(4, model.getEmail());
			stmt.setString(5, model.getAadhar());
			stmt.setInt(6, model.getAdvanced());
			System.out.println(model);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in add candidate"+e);
			return false;
		}
	}
	@Override
	public List<candidateModel> getAllCandidates() {
		try {
//			System.out.println("in repo");
			List<candidateModel> list= new ArrayList<candidateModel>();
			stmt=conn.prepareStatement("select * from addcandidate");
			rs=stmt.executeQuery();
			while(rs.next()) {
				candidateModel model=new candidateModel();
				model.setId(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setContact(rs.getString(3));
				model.setEmail(rs.getString(4));
				model.setAadhar(rs.getString(5));
				model.setAdvanced(rs.getInt(6));
				list.add(model);
			}
			return list.size()>0?list:null;
			   
		} catch (Exception e) {
			System.out.println("Error in viewCandidate"+e);
			return null;
		}
	}
	@Override
	public boolean isUpdateCandidate(candidateModel model) {
		try {
			System.out.println("i am in update");
			stmt=conn.prepareStatement("update addcandidate set name=?,contact=?,email=?,aadhar=? where id=?");
			stmt.setString(1, model.getName());
			stmt.setString(2, model.getContact());
			stmt.setString(3, model.getEmail());
			stmt.setString(4, model.getAadhar());
			stmt.setInt(5, model.getId());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in updating");
		}
		return false;
	}
	@Override
	public boolean isDeleteCandidate(int cid) {
		try {
			stmt=conn.prepareStatement("delete from addcandidate where id="+cid+"");
			int value=stmt.executeUpdate();
			
			return value>0?true:false;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error in deleting candidate"+e);
			return false;
		}
	}
	
	private int getMenuId() {
		int mid=0;
		try {
			stmt=conn.prepareStatement("select max(mid) from todaymenu");
			rs=stmt.executeQuery();
			if(rs.next()) {
				mid=rs.getInt(1);
			}
			return ++mid;
		} catch (Exception e) {
			System.out.println("Error in generating menuId "+e);
			return -1;
		}	}
	@Override
	public boolean addMenu(menuModel model) {
		try {
			int id=this.getMenuId();
			stmt=conn.prepareStatement("insert into todaymenu values(?,?,?,?,?,?,?)");
			stmt.setInt(1, id);
			stmt.setString(2, model.getItem1());
			stmt.setString(3, model.getItem2());
			stmt.setString(4, model.getItem3());
			stmt.setString(5, model.getItem4());
			stmt.setString(6, model.getSweets());
			stmt.setString(7, model.getDate());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			System.out.println("Error in addMenu"+e);
			return false;
		}
		
	}
	@Override
	public List<menuModel> getAllMenu() {
		try {
			System.out.println("in get all menu repo");
			List<menuModel> list1= new ArrayList<menuModel>();
			stmt=conn.prepareStatement("select * from todaymenu");
			rs=stmt.executeQuery();
			while(rs.next()) {
				menuModel model=new menuModel();
				model.setItem1(rs.getString(2));
				model.setItem2(rs.getString(3));
				model.setItem3(rs.getString(4));
				model.setItem4(rs.getString(5));
				model.setSweets(rs.getString(6));
				model.setDate(rs.getString(7));
				list1.add(model);
			}
			return list1.size()>0?list1:null;
			
		} catch (Exception e) {
			System.out.println("Error in viewCandidate"+e);
			return null;
		}
	}
	@Override
	public List<BreakFastModel> getAllBreakfastType() {
		try {
			List<BreakFastModel> list1= new ArrayList<BreakFastModel>();
			stmt=conn.prepareStatement("select * from breakfast");
			rs=stmt.executeQuery();
			while(rs.next()) {
				BreakFastModel model=new BreakFastModel();
				model.setId(rs.getInt(1));
				model.setbName(rs.getString(2));
				model.setPrice(rs.getInt(3));
				list1.add(model);
			}
			return list1.size()>0?list1:null;
		} catch (Exception e) {
			System.out.println("Error in get all Breakfast"+e);
			return null;
		}
	}
	@Override
	public List<BreakFastModel> getAllLunchMenu() {
		try {
			List<BreakFastModel> list1= new ArrayList<BreakFastModel>();
			stmt=conn.prepareStatement("select * from lunch_dinner");
			rs=stmt.executeQuery();
			while(rs.next()) {
				BreakFastModel model=new BreakFastModel();
				model.setId(rs.getInt(1));
				model.setbName(rs.getString(2));
				model.setPrice(rs.getInt(3));
				list1.add(model);
			}
			return list1.size()>0?list1:null;
		} catch (Exception e) {
			System.out.println("Error in get all lunch"+e);
			return null;
		}
	}
	@Override
	public int getBillNo() {
		int bno=0;
		try {
			stmt=conn.prepareStatement("select max(billno) from dailyuserbill ");
			rs=stmt.executeQuery();
			if(rs.next()) {
				bno=rs.getInt(1);
			}
			return ++bno;
		} catch (Exception e) {
			System.out.println("Error in bill no generating"+e);
			return 0;
		}
	}
	@Override
	public boolean addDailyBill(BillModel model) {
		try {
			stmt=conn.prepareStatement("insert into dailyuserBill values(?,?,?)");
			stmt.setInt(1, model.getBillno());
			stmt.setString(2, model.getDate());
			stmt.setInt(3, model.getPrice());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		} catch (Exception e) {
			System.out.println("Error in adding bill to DB"+e);
			return false;
		}
	}
	@Override
	public List<candidateModel> searchByname(String name) {
		try {
			List<candidateModel> li=new ArrayList<candidateModel>();
			
			stmt=conn.prepareStatement("select * from addcandidate where name like '"+name+"%'");
			
			rs=stmt.executeQuery();
			while(rs.next()) {
				candidateModel canM=new candidateModel();
				canM.setId(rs.getInt(1));
				canM.setName(rs.getString(2));
				canM.setEmail(rs.getString(4));
				canM.setContact(rs.getString(3));
				canM.setAadhar(rs.getString(5));
				
				li.add(canM);
			}
			System.out.println(li);
			return li.size()>0?li:null;
			
		} catch (Exception e) {
			System.out.println("Error in Search by name"+e);
			return null;
		}
		
	}
	@Override
	public List<candidateModel> searchByemail(String email) {
		try {
			List<candidateModel> li=new ArrayList<candidateModel>();
			
			stmt=conn.prepareStatement("select * from addcandidate where email like '"+email+"%'");
			
			rs=stmt.executeQuery();
			while(rs.next()) {
				candidateModel canM=new candidateModel();
				canM.setId(rs.getInt(1));
				canM.setName(rs.getString(2));
				canM.setEmail(rs.getString(4));
				canM.setContact(rs.getString(3));
				canM.setAadhar(rs.getString(5));
				
				li.add(canM);
			}
			System.out.println(li);
			return li.size()>0?li:null;
			
		} catch (Exception e) {
			System.out.println("Error in Search by name"+e);
			return null;
		}
		
	}
	@Override
	public List<candidateModel> searchBycontact(String contact) {
		try {
			List<candidateModel> li=new ArrayList<candidateModel>();
			
			stmt=conn.prepareStatement("select * from addcandidate where Contact like '"+contact+"%'");
			
			rs=stmt.executeQuery();
			while(rs.next()) {
				candidateModel canM=new candidateModel();
				canM.setId(rs.getInt(1));
				canM.setName(rs.getString(2));
				canM.setEmail(rs.getString(4));
				canM.setContact(rs.getString(3));
				canM.setAadhar(rs.getString(5));
				
				li.add(canM);
			}
			System.out.println(li);
			return li.size()>0?li:null;
			
		} catch (Exception e) {
			System.out.println("Error in Search by name"+e);
			return null;
		}
	}
	@Override
	public boolean markAttendance(int id, String date) {
		try {
			int Aid=this.getattendanceId();
			int status=1;
			stmt=conn.prepareStatement("insert into markattendance values(?,?,?,?)");
			stmt.setInt(1, Aid);
			stmt.setInt(2, id);
			stmt.setString(3, date);
			stmt.setInt(4, status);
			int b=stmt.executeUpdate();
			if(b>0) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	

}
