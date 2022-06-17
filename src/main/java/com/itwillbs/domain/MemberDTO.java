package com.itwillbs.domain;

import java.sql.Timestamp;

public class MemberDTO {
	// 데이터를 저장해서 전달해주는 자바파일  
	
	// 멤버변수 정의=> 디비열 이름 일치
	// private : 외부에서 접근 못하게 막아줌 => 은닉
	private String id;
	private String pass;
	private String name;
	private Timestamp date;
	//추가
//	String gender;
//	String email;
//	String phone;
//	String address;
	
	// 멤버함수 메서드 정의 
	// 멤버변수를 외부에서 접근할수 있게 메서드 정의 set() get() 
	//  alt shift s => r
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	

	
	
}
