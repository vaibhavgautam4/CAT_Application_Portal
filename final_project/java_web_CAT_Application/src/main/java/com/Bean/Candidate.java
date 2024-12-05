package com.Bean;

public class Candidate {
	private int cid;
	private String title;
	private String fname;
	private String mname;
	private String lname;
	private String dob;
	private String gender;
	private String state;
	private String nationality;
	private String father;
	private long aadhar;
	
	public Candidate(int cid, String title, String fname, String mname, String lname, String dob, String gender,
			String state, String nationality, String father, long aadhar) {
		super();
		this.cid = cid;
		this.title = title;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.dob = dob;
		this.gender = gender;
		this.state = state;
		this.nationality = nationality;
		this.father = father;
		this.aadhar = aadhar;
	}
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getFather() {
		return father;
	}
	public void setFather(String father) {
		this.father = father;
	}
	public long getAadhar() {
		return aadhar;
	}
	public void setAadhar(long aadhar) {
		this.aadhar = aadhar;
	}



}
