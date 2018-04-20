package com.kh.fooding.store.model.vo;

public class Sam implements java.io.Serializable{
	private String areaDong;
	private String areaGoo;
	private String areaSi;
	private String restAddress;
	private String restBoard;
	private String areaMenu;
	private String restName;
	private String restNumber;
	private String restUpstream;
	private int restX;
	private int restY;

	public Sam() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sam(String areaDong, String areaGoo, String areaSi, String restAddress, String restBoard, String areaMenu,
			String restName, String restNumber, String restUpstream, int restX, int restY) {
		super();
		this.areaDong = areaDong;
		this.areaGoo = areaGoo;
		this.areaSi = areaSi;
		this.restAddress = restAddress;
		this.restBoard = restBoard;
		this.areaMenu = areaMenu;
		this.restName = restName;
		this.restNumber = restNumber;
		this.restUpstream = restUpstream;
		this.restX = restX;
		this.restY = restY;
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
	public String getAreaMenu() {
		return areaMenu;
	}
	public void setAreaMenu(String areaMenu) {
		this.areaMenu = areaMenu;
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
				+ restAddress + ", restBoard=" + restBoard + ", areaMenu=" + areaMenu + ", restName=" + restName
				+ ", restNumber=" + restNumber + ", restUpstream=" + restUpstream + ", restX=" + restX + ", restY="
				+ restY + "]";
	}
	
	
}
