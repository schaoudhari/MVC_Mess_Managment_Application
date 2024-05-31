package org.SMMess.admin.model;

public class menuModel {
	private String item1;
	private String item2;
	private String item3;
	private String item4;
	private String Sweets;
	private String date;
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public menuModel(String item1, String item2, String item3, String item4, String sweets,String date) {
		super();
		this.item1 = item1;
		this.item2 = item2;
		this.item3 = item3;
		this.item4 = item4;
		Sweets = sweets;
		this.date=date;
	}
	
	public menuModel() {
		// TODO Auto-generated constructor stub
	}

	public String getItem1() {
		return item1;
	}
	public void setItem1(String item1) {
		this.item1 = item1;
	}
	public String getItem2() {
		return item2;
	}
	public void setItem2(String item2) {
		this.item2 = item2;
	}
	public String getItem3() {
		return item3;
	}
	public void setItem3(String item3) {
		this.item3 = item3;
	}
	public String getItem4() {
		return item4;
	}
	public void setItem4(String item4) {
		this.item4 = item4;
	}
	public String getSweets() {
		return Sweets;
	}
	public void setSweets(String sweets) {
		Sweets = sweets;
	}
}
