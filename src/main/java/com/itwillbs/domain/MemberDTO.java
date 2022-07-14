package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

public class MemberDTO {
	// 데이터를 저장해서 전달해주는 자바파일  
	
	// 멤버변수 정의=> 디비열 이름 일치
	// private : 외부에서 접근 못하게 막아줌 => 은닉
	private int id;
	private String password;
	private String name;
	private Timestamp date;
	private String email;
	private int kakao_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getKakao_id() {
		return kakao_id;
	}

	public void setKakao_id(int kakao_id) {
		this.kakao_id = kakao_id;
	}
}
