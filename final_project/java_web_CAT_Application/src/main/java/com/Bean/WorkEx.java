package com.Bean;

public class WorkEx {
	private int cid;
	private int experience;
	private String company;
	
	public WorkEx(int cid, int experience, String company) {
		super();
		this.cid = cid;
		this.experience = experience;
		this.company = company;
	}
	
	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}

	
	
	
}
