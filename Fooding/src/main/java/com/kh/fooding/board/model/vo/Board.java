package com.kh.fooding.board.model.vo;

import java.sql.Date;

public class Board {
	private int bid;
	private String mCode;
	private int mid;
	private String bTitle;
	private String bContent;
	private Date enrollDate;
	private String status;
	private String refYN;
	private int pno;
	private int bLevel;
	private Date modifyDate;
	private int bno;
	private int bCount;
	private String enrollDateJson;
	private String modifyDateJson;
	private String answer;
	private String answerDate;
	private int answerBid;
	private String userName;

	
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Board(int bid, String mCode, int mid, String bTitle, String bContent, Date enrollDate, String status,
			String refYN, int pno, int bLevel, Date modifyDate, int bno, int bCount, String enrollDateJson,
			String modifyDateJson, String answer, String answerDate, int answerBid, String userName) {
		super();
		this.bid = bid;
		this.mCode = mCode;
		this.mid = mid;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.enrollDate = enrollDate;
		this.status = status;
		this.refYN = refYN;
		this.pno = pno;
		this.bLevel = bLevel;
		this.modifyDate = modifyDate;
		this.bno = bno;
		this.bCount = bCount;
		this.enrollDateJson = enrollDateJson;
		this.modifyDateJson = modifyDateJson;
		this.answer = answer;
		this.answerDate = answerDate;
		this.answerBid = answerBid;
		this.userName=userName;
	}


	public int getAnswerBid() {
		return answerBid;
	}


	public void setAnswerBid(int answerBid) {
		this.answerBid = answerBid;
	}


	public String getAnswerDate() {
		return answerDate;
	}


	public void setAnswerDate(String answerDate) {
		this.answerDate = answerDate;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getEnrollDateJson() {
		return enrollDateJson;
	}


	public void setEnrollDateJson(String enrollDateJson) {
		this.enrollDateJson = enrollDateJson;
	}


	public String getModifyDateJson() {
		return modifyDateJson;
	}


	public void setModifyDateJson(String modifyDateJson) {
		this.modifyDateJson = modifyDateJson;
	}


	public int getbCount() {
		return bCount;
	}
	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getmCode() {
		return mCode;
	}
	public void setmCode(String mCode) {
		this.mCode = mCode;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRefYN() {
		return refYN;
	}
	public void setRefYN(String refYN) {
		this.refYN = refYN;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getbLevel() {
		return bLevel;
	}
	public void setbLevel(int bLevel) {
		this.bLevel = bLevel;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	

	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Board [bid=" + bid + ", mCode=" + mCode + ", mid=" + mid + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", enrollDate=" + enrollDate + ", status=" + status + ", refYN=" + refYN + ", pno=" + pno
				+ ", bLevel=" + bLevel + ", modifyDate=" + modifyDate + ", bno=" + bno + ", bCount=" + bCount
				+ ", enrollDateJson=" + enrollDateJson + ", modifyDateJson=" + modifyDateJson + " answer : "+ answer + " answerDate : " + answerDate+ "answerBid : " + answerBid+", userName=" + userName + "]";
	}
	
	
	
}
