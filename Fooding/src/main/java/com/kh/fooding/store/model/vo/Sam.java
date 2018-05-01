package com.kh.fooding.store.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Sam implements java.io.Serializable{
	                                                             
	private String areaDong;                                     
	private String areaGoo;                                      
	private String areaSi;                                       
	private String restAddress;                                  
	private String restBoard;                                    
	private String restMenu;                                     
	private String restName;                                     
	private String restNumber;                                   
	private String restUpstream;                                 
	private int restX;                                           
	private int restY;                                           
	private String writer;                                       
	private String content; 
	private String photo;
	private int sid;
	private int star;
	private int rank;
	
	public Sam() {                                               
		super();
		// TODO Auto-generated constructor stub
	}

	public Sam(String areaDong, String areaGoo, String areaSi, String restAddress, String restBoard, String restMenu,
			String restName, String restNumber, String restUpstream, int restX, int restY, String writer,
			String content, String photo, int sid, int star, int rank) {
		super();
		this.areaDong = areaDong;
		this.areaGoo = areaGoo;
		this.areaSi = areaSi;
		this.restAddress = restAddress;
		this.restBoard = restBoard;
		this.restMenu = restMenu;
		this.restName = restName;
		this.restNumber = restNumber;
		this.restUpstream = restUpstream;
		this.restX = restX;
		this.restY = restY;
		this.writer = writer;
		this.content = content;
		this.photo = photo;
		this.sid = sid;
		this.star = star;
		this.rank = rank;
	}


	
	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}



	public String getAreaDong() {
		return areaDong;
	}

	public void setAreaDong(String areaDong) {
		this.areaDong = areaDong;
	}

	public String getAreaGoo() {
		return areaGoo;
	}

	public void setAreaGoo(String areaGoo) {
		this.areaGoo = areaGoo;
	}

	public String getAreaSi() {
		return areaSi;
	}

	public void setAreaSi(String areaSi) {
		this.areaSi = areaSi;
	}

	public String getRestAddress() {
		return restAddress;
	}

	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}

	public String getRestBoard() {
		return restBoard;
	}

	public void setRestBoard(String restBoard) {
		this.restBoard = restBoard;
	}

	public String getRestMenu() {
		return restMenu;
	}

	public void setRestMenu(String restMenu) {
		this.restMenu = restMenu;
	}

	public String getRestName() {
		return restName;
	}

	public void setRestName(String restName) {
		this.restName = restName;
	}

	public String getRestNumber() {
		return restNumber;
	}

	public void setRestNumber(String restNumber) {
		this.restNumber = restNumber;
	}

	public String getRestUpstream() {
		return restUpstream;
	}

	public void setRestUpstream(String restUpstream) {
		this.restUpstream = restUpstream;
	}

	public int getRestX() {
		return restX;
	}

	public void setRestX(int restX) {
		this.restX = restX;
	}

	public int getRestY() {
		return restY;
	}

	public void setRestY(int restY) {
		this.restY = restY;
	}

	@Override
	public String toString() {
		return "Sam [areaDong=" + areaDong + ", areaGoo=" + areaGoo + ", areaSi=" + areaSi + ", restAddress="
				+ restAddress + ", restBoard=" + restBoard + ", restMenu=" + restMenu + ", restName=" + restName
				+ ", restNumber=" + restNumber + ", restUpstream=" + restUpstream + ", restX=" + restX + ", restY="
				+ restY + ", writer=" + writer + ", content=" + content + ", photo=" + photo + ", sid=" + sid
				+ ", star=" + star + " rank : " + rank + "]";
	}
	
	
}
