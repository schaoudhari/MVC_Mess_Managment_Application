package org.SMMess.admin.repository;

import java.util.List;

import org.SMMess.admin.model.BillModel;
import org.SMMess.admin.model.BreakFastModel;
import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.model.menuModel;

public interface adminRepository {

	public boolean checkAdminLogin(adminModel model);

	public boolean addCandidate(candidateModel model);

	public List<candidateModel> getAllCandidates();

	public boolean isUpdateCandidate(candidateModel model);

	public boolean isDeleteCandidate(int cid);

	public boolean addMenu(menuModel model);

	public List<menuModel> getAllMenu(); 

	public List<BreakFastModel> getAllBreakfastType();

	public List<BreakFastModel> getAllLunchMenu();

	public int getBillNo();

	public boolean addDailyBill(BillModel model);

	public List<candidateModel> searchByname(String name);

	public List<candidateModel> searchByemail(String email);
	public List<candidateModel> searchBycontact(String contact);
	public boolean markAttendance(int id,String dat);
	
}
