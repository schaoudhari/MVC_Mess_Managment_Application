package org.SMMess.admin.model;

public class BillModel {
	private int billno;
	private String date;
	private int price;
	public BillModel(int billno, String date, int price) {
		super();
		this.billno = billno;
		this.date = date;
		this.price = price;
	}
	public int getBillno() {
		return billno;
	}
	public void setBillno(int billno) {
		this.billno = billno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
