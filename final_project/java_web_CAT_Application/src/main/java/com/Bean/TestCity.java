package com.Bean;

public class TestCity {
	private int cid;
	private String city1;
	private String city2;
	private String city3;
	
	public TestCity(int cid, String city1, String city2, String city3) {
		super();
		this.cid = cid;
		this.city1 = city1;
		this.city2 = city2;
		this.city3 = city3;
	}

	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCity1() {
		return city1;
	}

	public void setCity1(String city1) {
		this.city1 = city1;
	}

	public String getCity2() {
		return city2;
	}

	public void setCity2(String city2) {
		this.city2 = city2;
	}

	public String getCity3() {
		return city3;
	}

	public void setCity3(String city3) {
		this.city3 = city3;
	}
	
}
