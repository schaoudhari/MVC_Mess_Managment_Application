package org.SMMess.admin.service;
import java.util.List;


import org.SMMess.admin.model.BillModel;
import org.SMMess.admin.model.BreakFastModel;
import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.model.menuModel;
import org.SMMess.admin.repository.adminRepository;
import org.SMMess.admin.repository.adminRepositoryImpl;
public class adminServiceImpl implements adminService{
	adminRepository aRepo=new adminRepositoryImpl();
	@Override
	public boolean checkAdminLogin(adminModel model) {
		return aRepo.checkAdminLogin(model);
	}
	@Override
	public boolean addCandidate(candidateModel model) {
		// TODO Auto-generated method stub
		return aRepo.addCandidate(model);
	}
	@Override
	public List<candidateModel> getAllCandidates() {
		// TODO Auto-generated method stub
		return aRepo.getAllCandidates();
	}
	@Override
	public boolean isUpdateCandidate(candidateModel model) {
		// TODO Auto-generated method stub
		return aRepo.isUpdateCandidate(model);
	}
	@Override
	public boolean isDeleteCandidate(int cid) {
		// TODO Auto-generated method stub
		return aRepo.isDeleteCandidate(cid);
	}
	@Override
	public boolean addMenu(menuModel model) {
		// TODO Auto-generated method stub
		return aRepo.addMenu(model);
	}
	@Override
	public List<menuModel> getAllMenu() {
		// TODO Auto-generated method stub
		return aRepo.getAllMenu();
	}
	@Override
	public List<BreakFastModel> getAllBreakfastType() {
		// TODO Auto-generated method stub
		return aRepo.getAllBreakfastType();
	}
	@Override
	public List<BreakFastModel> getAllLunchMenu() {
		// TODO Auto-generated method stub
		return aRepo.getAllLunchMenu();
	}
	@Override
	public int getBillNo() {
		// TODO Auto-generated method stub
		return aRepo.getBillNo();
	}
	@Override
	public boolean addDailyBill(BillModel model) {
		// TODO Auto-generated method stub
		return aRepo.addDailyBill(model);
	}
	@Override
	public List<candidateModel> searchByname(String name) {
		// TODO Auto-generated method stub
		return aRepo.searchByname(name);
	}
	@Override
	public List<candidateModel> searchByemail(String email) {
		// TODO Auto-generated method stub
		return aRepo.searchByemail(email);
	}
	

}
