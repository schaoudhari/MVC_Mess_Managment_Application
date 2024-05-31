 package org.SMMess.admin.model;

public class userModel {
	@Override
	public String toString() {
		return "userModel [uid=" + uid + ", contact=" + contact + ", name=" + name + ", age=" + age + ", email=" + email
				+ "]";
	}
	private int uid;
	private String contact;
	private String name;
	private int age;
	private String email;
	public userModel() {
		
	}
	public userModel(int uid, String contact, String name, int age, String email) {
		super();
		
		this.contact = contact;
		this.name = name;
		this.age = age;
		this.email = email;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
