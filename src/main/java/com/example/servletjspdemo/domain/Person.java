package com.example.servletjspdemo.domain;

public class Person {
	
	private String firstName = "unknown";
	private int yob = 1900;
	
	public Person() {
		super();
	}
	
	public Person(String firstName, int yob) {
		super();
		this.firstName = firstName;
		this.yob = yob;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public int getYob() {
		return yob;
	}
	public void setYob(int yob) {
		this.yob = yob;
	}
}
