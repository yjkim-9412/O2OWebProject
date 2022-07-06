package com.itwillbs.service;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Timestamp;
import java.util.HashMap;

import javax.inject.Inject;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	//객체생성 
	@Inject
	private MemberDAO memberDAO;

	@Override
	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberServiceImpl insertMember()");
		memberDTO.setDate(new Timestamp(System.currentTimeMillis()));
		//메서드 호출
		memberDAO.insertMember(memberDTO);
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		
		
		return memberDAO.userCheck(memberDTO);
	}

	@Override
	public MemberDTO getMember(int id) {
		
		return memberDAO.getMember(id);
	}

	@Override
	public void updateName(MemberDTO memberDTO) {
		memberDAO.updateName(memberDTO);
		
	}
	
	@Override
	public void updateEmail(MemberDTO memberDTO) {
		memberDAO.updateEmail(memberDTO);
		
	}
	
	@Override
	public void updatePass(MemberDTO memberDTO) {
		memberDAO.updatePass(memberDTO);
		
	}
	
	@Override
	public void deleteMember(MemberDTO memberDTO) {
		memberDAO.deleteMember(memberDTO);
	}

	// 카카오 로그인 API //
	@Override
	public String getAccessToken(String authorize_code) {
	String access_Token = "";
	String refresh_Token = "";
	String reqURL = "https://kauth.kakao.com/oauth/token";

	try {
		URL url = new URL(reqURL);
	    
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
	    
		conn.setRequestMethod("POST");
		conn.setDoOutput(true);
		// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
	    
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		StringBuilder sb = new StringBuilder();
		sb.append("grant_type=authorization_code");
	    
		sb.append("&client_id=b28c257d1c3a9f7b60f4ede210556e5a"); //본인이 발급받은 key
		sb.append("&redirect_uri=http://localhost:8080/myweb2/member/main"); // 본인이 설정한 주소
	    
		sb.append("&code=" + authorize_code);
		bw.write(sb.toString());
		bw.flush();
	    
		// 결과 코드가 200이라면 성공
		int responseCode = conn.getResponseCode();
		System.out.println("responseCode : " + responseCode);
	    
		// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String line = "";
		String result = "";
	    
		while ((line = br.readLine()) != null) {
			result += line;
		}
		System.out.println("response body : " + result);
	    
		// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
		 JsonParser parser = new JsonParser();
	      JsonElement element = parser.parse(result);

		// JsonElement element = (JsonElement) parser.parseDoc(result);
	    
		access_Token = element.getAsJsonObject().get("access_token").getAsString();
		refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
	    
		System.out.println("access_token : " + access_Token);
		System.out.println("refresh_token : " + refresh_Token);
	    
		br.close();
		bw.close();
	} catch (IOException e) {
		e.printStackTrace();
	}
	return access_Token;
	}
		//  ----------- 카카오 API ----------- 
	public HashMap<String, Object> getUserInfo(String access_Token) {


	HashMap<String, Object> userInfo = new HashMap<String, Object>();
	String reqURL = "https://kapi.kakao.com/v2/user/me";
	try {
		URL url = new URL(reqURL);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");

		// 요청에 필요한 Header에 포함될 내용
		conn.setRequestProperty("Authorization", "Bearer " + access_Token);

		int responseCode = conn.getResponseCode();
		System.out.println("responseCode : " + responseCode);

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

		String line = "";
		String result = "";

		while ((line = br.readLine()) != null) {
			result += line;
		}
		System.out.println("response body : " + result);

		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(result);

		JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
		JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
		
		
		String nickname = properties.getAsJsonObject().get("nickname").getAsString();
		String email = kakao_account.getAsJsonObject().get("email").getAsString();
		String profile_image = properties.getAsJsonObject().get("profile_image").getAsString();
		
		userInfo.put("nickname", nickname);
		userInfo.put("email", email);
		userInfo.put("profile_image", profile_image);
		
		
	} catch (IOException e) {
		e.printStackTrace();
	}
	return userInfo; 
	}

	@Override
	public MemberDTO getMemberE(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	// 	----------- CHATROOM -----------


//	@Override
//	public MemberDTO getMemberE(String email) {
//
//		return memberDAO.getMemberE(email);
//	}
}

