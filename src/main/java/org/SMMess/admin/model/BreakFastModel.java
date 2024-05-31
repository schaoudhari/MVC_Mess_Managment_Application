package org.SMMess.admin.model;

public class BreakFastModel {
	private int id;
	private String bName;
	public BreakFastModel(int id, String bName, int price) {
		super();
		this.id = id;
		this.bName = bName;
		this.price = price;
	}
	public BreakFastModel() {
		// TODO Auto-generated constructor stub
	}
	private int price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
