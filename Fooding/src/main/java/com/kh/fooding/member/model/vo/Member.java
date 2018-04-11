package com.kh.fooding.member.model.vo;

import java.sql.Date;

public class Member {
	private int mid;
	private String userId;
	private String userPwd;
	private String userName;
	private String birth;
	private String gender;
	private String phone;
	private String email;
	private String address;
	private String mCode;
	private String status;
	private Date enrollDate;
	private int repCount;
	private int bizNo;
	private String bizName;
	private int bookCount;
	
	public Member() {
		super();
	}

	public Member(int mid, String userId, String userPwd, String userName, String birth, String gender, String phone,
			String email, String address, String mCode, String status, Date enrollDate, int repCount, int bizNo,
			String bizName, int bookCount) {
		super();
		this.mid = mid;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.mCode = mCode;
		this.status = status;
		this.enrollDate = enrollDate;
		this.repCount = repCount;
		this.bizNo = bizNo;
		this.bizName = bizName;
		this.bookCount = bookCount;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getRepCount() {
		return repCount;
	}

	public void setRepCount(int repCount) {
		this.repCount = repCount;
	}

	public int getBizNo() {
		return bizNo;
	}

	public void setBizNo(int bizNo) {
		this.bizNo = bizNo;
	}

	public String getBizName() {
		return bizName;
	}

	public void setBizName(String bizName) {
		this.bizName = bizName;
	}

	public int getBookCount() {
		return bookCount;
	}

	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", birth=" + birth + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", address="
				+ address + ", mCode=" + mCode + ", status=" + status + ", enrollDate=" + enrollDate + ", repCount="
				+ repCount + ", bizNo=" + bizNo + ", bizName=" + bizName + ", bookCount=" + bookCount + "]";
	}
	
}
