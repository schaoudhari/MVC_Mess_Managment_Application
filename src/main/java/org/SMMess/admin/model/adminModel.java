package org.SMMess.admin.model;

public class adminModel {
	private String Uname;
	private String Pass;

	public adminModel(String uname, String pass) {
		super();
		Uname = uname;
		Pass = pass;
	}

	public String getUname() {
		return Uname;
	}

	public void setUname(String uname) {
		Uname = uname;
	}

	public String getPass() {
		return Pass;
	}

	public void setPass(String pass) {
		Pass = pass;
	}

	@Override
	public String toString() {
		return "adminModel [Uname=" + Uname + ", Pass=" + Pass + "]";
	}
}
