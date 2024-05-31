package org.SMMess.admin.service;

import java.util.List;

import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.repository.adminRepository;
import org.SMMess.admin.repository.adminRepositoryImpl;

public class searchServiceImpl implements searchService {
	adminRepository aReposi=new adminRepositoryImpl();
	@Override
	public List<candidateModel> searchBycontact(String contact) {
		// TODO Auto-generated method stub
		return aReposi.searchBycontact(contact);
	}
	@Override
	public boolean markAttendance(int id,String date) {
		// TODO Auto-generated method stub
		return aReposi.markAttendance(id, date);
	}

}
