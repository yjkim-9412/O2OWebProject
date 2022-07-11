package com.itwillbs.domain;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
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

	
	
}
