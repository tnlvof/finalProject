package com.kh.fooding.sample.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Sample implements java.io.Serializable{
	private int sbid;
	private int sbNo;
	private String sbName;
	private String sbRname;
	
	public Sample() {}

	public Sample(int sbid, int sbNo, String sbName, String sbRname) {
		super();
		this.sbid = sbid;
		this.sbNo = sbNo;
		this.sbName = sbName;
		this.sbRname = sbRname;
	}

	public int getSbid() {
		return sbid;
	}

	public void setSbid(int sbid) {
		this.sbid = sbid;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public String getSbName() {
		return sbName;
	}

	public void setSbName(String sbName) {
		this.sbName = sbName;
	}

	public String getSbRname() {
		return sbRname;
	}

	public void setSbRname(String sbRname) {
		this.sbRname = sbRname;
	}

	@Override
	public String toString() {
		return "Sample [sbid=" + sbid + ", sbNo=" + sbNo + ", sbName=" + sbName + ", sbRname=" + sbRname + "]";
	}
	
	
}
