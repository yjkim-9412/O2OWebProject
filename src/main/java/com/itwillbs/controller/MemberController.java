
package com.itwillbs.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;


@Controller
public class MemberController {

	//MemberService memberService=new MemberServiceImpl()객체생성
	@Inject
	private MemberService memberService;
	
	@Autowired
	private MemberService ms;
	
	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
		// /WEB-INF/views/member/insertForm.jsp
		return "member/insertForm";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO) {
		//회원가입 메서드호출
		memberService.insertMember(memberDTO);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		
		return "member/loginForm";
	}
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO,HttpSession session) {
		
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 != null) {
			session.setAttribute("id",memberDTO.getId());
		}else {
			return "member/msg";
		}
		return "redirect:/member/main";
	}
	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main(@RequestParam(value = "code", required = false) String code,Model m) {
		
System.out.println("#########" + code);
        
		// 위에서 만든 코드 아래에 코드 추가
		String access_Token = ms.getAccessToken(code);
	
        
		HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		System.out.println("###profile_image#### : " + userInfo.get("profile_image"));
		m.addAttribute("ka_email", userInfo.get("email"));
		m.addAttribute("ka_img", userInfo.get("profile_image"));
		return "member/main";
	}
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
		
	}
	@RequestMapping(value = "/mypage/info", method = RequestMethod.GET)
	public String info(HttpSession session,Model model) {
		int id = (Integer)session.getAttribute("id");
		
		
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		return "mypage/info";
	}
	
	@RequestMapping(value = "/mypage/account-info", method = RequestMethod.GET)
	public String account_info(HttpSession session,Model model) {
		int id = (Integer)session.getAttribute("id");
		
		
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		return "mypage/account-info";
	}
	
	@RequestMapping(value = "/mypage/settings/name", method = RequestMethod.GET)
	public String name(HttpSession session,Model model) {
		int id = (Integer)session.getAttribute("id");
		
		
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		return "mypage/settings/name";
	}
	
	@RequestMapping(value = "/mypage/settings/name-update", method = RequestMethod.POST)
	public String updateName(@RequestParam("name") String name, MemberDTO memberDTO) {
				
		memberDTO.setName(name);
		memberService.updateMember(memberDTO);
		
		return "redirect:/mypage/account-info";
	}
	
	@RequestMapping(value = "/mypage/deletePro", method = RequestMethod.GET)
	public String delete(MemberDTO memberDTO, HttpSession session) {
		
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2!=null) {
			//아이디 비밀번호 일치
			//삭제작업
//			memberService.deleteMember(memberDTO);
			//세션값 초기화
			session.invalidate();
			return "redirect:/member/main";
		}else {
			//아이디 비밀번호 틀림
			return "member/msg";
		}
		
		
//		return "mypage/delete";
	}
	
	


}

