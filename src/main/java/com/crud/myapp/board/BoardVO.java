package com.crud.myapp.board;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String menu_name;
	private String menu_name_eng ;
	private String ice_hot ;
	private String category ;
	private String price;
	private String content;
	private String takeout ;
	private String soldout ;
	private Date regdate;
	private int cnt;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_name_eng() {return menu_name_eng;	}
	public void setMenu_name_eng(String menu_name_eng) {this.menu_name_eng = menu_name_eng;}
	public String getIce_hot() {return ice_hot;}
	public void setIce_hot(String ice_hot) {this.ice_hot = ice_hot;}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {this.price = price;}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTakeout() {return takeout;}
	public void setTakeout(String takeout) {this.takeout = takeout;}
	public String getSoldout() {return soldout;	}
	public void setSoldout(String soldout) {this.soldout = soldout;}

	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
