package org.SMMess.admin.model;

public class candidateModel {
	private int id;
	
	private String name;
	private String email;
	private String contact;
	private int advanced;
	public int getAdvanced() {
		return advanced;
	}
	public void setAdvanced(int advanced) {
		this.advanced = advanced;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public candidateModel(String name, String contact, String email, String aadhar,int adv) {
		super();
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.aadhar = aadhar;
		this.advanced=adv;
	}
	public candidateModel() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "candidateModel [id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact
				+ ", advanced=" + advanced + ", aadhar=" + aadhar + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	private String aadhar;
}
