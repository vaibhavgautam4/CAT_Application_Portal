package com.Bean;

public class Academics {
	private int cid;
	private String schoolName10;
	private String schoolBoard10;
	private double percentage10;
	private String schoolName12;
	private String schoolBoard12;
	private double percentage12;
	private String collegeName;
	private String collegeCourse;
	private String collegeSpecialization;
	private double collegeCGPA;
	
	
	public Academics(int cid, String schoolName10, String schoolBoard10, double percentage10, String schoolName12,
			String schoolBoard12, double percentage12, String collegeName, String collegeCourse,
			String collegeSpecialization, double collegeCGPA) {
		super();
		this.cid = cid;
		this.schoolName10 = schoolName10;
		this.schoolBoard10 = schoolBoard10;
		this.percentage10 = percentage10;
		this.schoolName12 = schoolName12;
		this.schoolBoard12 = schoolBoard12;
		this.percentage12 = percentage12;
		this.collegeName = collegeName;
		this.collegeCourse = collegeCourse;
		this.collegeSpecialization = collegeSpecialization;
		this.collegeCGPA = collegeCGPA;
	}
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getSchoolName10() {
		return schoolName10;
	}
	public void setSchoolName10(String schoolName10) {
		this.schoolName10 = schoolName10;
	}
	public String getSchoolBoard10() {
		return schoolBoard10;
	}
	public void setSchoolBoard10(String schoolBoard10) {
		this.schoolBoard10 = schoolBoard10;
	}
	public double getPercentage10() {
		return percentage10;
	}
	public void setPercentage10(double percentage10) {
		this.percentage10 = percentage10;
	}
	public String getSchoolName12() {
		return schoolName12;
	}
	public void setSchoolName12(String schoolName12) {
		this.schoolName12 = schoolName12;
	}
	public String getSchoolBoard12() {
		return schoolBoard12;
	}
	public void setSchoolBoard12(String schoolBoard12) {
		this.schoolBoard12 = schoolBoard12;
	}
	public double getPercentage12() {
		return percentage12;
	}
	public void setPercentage12(double percentage12) {
		this.percentage12 = percentage12;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getCollegeCourse() {
		return collegeCourse;
	}
	public void setCollegeCourse(String collegeCourse) {
		this.collegeCourse = collegeCourse;
	}
	public String getCollegeSpecialization() {
		return collegeSpecialization;
	}
	public void setCollegeSpecialization(String collegeSpecialization) {
		this.collegeSpecialization = collegeSpecialization;
	}
	public double getCollegeCGPA() {
		return collegeCGPA;
	}
	public void setCollegeCGPA(double collegeCGPA) {
		this.collegeCGPA = collegeCGPA;
	}

}