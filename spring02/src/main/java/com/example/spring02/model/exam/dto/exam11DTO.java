package com.example.spring02.model.exam.dto;

public class exam11DTO {
	private int id;
	private String title;
	private String anthor;
	private int price;
	private int qty;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAnthor() {
		return anthor;
	}
	public void setAnthor(String anthor) {
		this.anthor = anthor;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	@Override
	public String toString() {
		return "exam11DTO [id=" + id + ", title=" + title + ", anthor=" + anthor + ", price=" + price + ", qty=" + qty
				+ "]";
	}
	
}
