package org.SMMess.admin.service;

import java.util.List;

import org.SMMess.admin.model.candidateModel;

public interface searchService {

	List<candidateModel> searchBycontact(String contact);
	public boolean markAttendance(int id,String date);


}
