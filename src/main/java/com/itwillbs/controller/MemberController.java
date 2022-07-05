
package com.itwillbs.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
	

	// top bottom 확인용
	@RequestMapping(value = "/inc/top", method = RequestMethod.GET)
	public String top() {
		// /WEB-INF/views/inc/top.jsp
		return "inc/top";
	}
	
	@RequestMapping(value = "/inc/bottom", method = RequestMethod.GET)
	public String bottom() {
		// /WEB-INF/views/inc/bottom.jsp
		return "inc/bottom";
	}
	
	@RequestMapping(value = "/member/star", method = RequestMethod.GET)
	public String star() {
		// /WEB-INF/views/member/star.jsp
		return "member/star";
	}

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
		m.addAttribute("ac", userInfo.get("nickname"));
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
	
	@RequestMapping(value="/member/kakaologin", method=RequestMethod.GET) 
	public String kakaologin() {
	
		return "member/kakaologin";
	}
	
	@RequestMapping(value = "/mypage/settings/email", method = RequestMethod.GET)
	public String email(HttpSession session, Model model) {
		int id = (Integer)session.getAttribute("id");
		
		
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		return "mypage/settings/email";
		
	}
	
	@RequestMapping(value = "/mypage/settings/email-update", method = RequestMethod.POST)
	public String updateEmail(@RequestParam("email") String email, MemberDTO memberDTO) {
				
		memberDTO.setEmail(email);
		System.out.println(memberDTO.getEmail());
		memberService.updateEmail(memberDTO);
		
		return "redirect:/mypage/account-info";
	}
	
	@RequestMapping(value = "/mypage/settings/password", method = RequestMethod.GET)
	public String password(HttpSession session, Model model) {
		int id = (Integer)session.getAttribute("id");
		
		
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		return "mypage/settings/password";
		
	}
	
	@RequestMapping(value = "/mypage/settings/password-update", method = RequestMethod.GET)
	public String updatePass(HttpServletRequest request, MemberDTO memberDTO, Model model) {
		String password = request.getParameter("password");
		String newPass = request.getParameter("newPass");
		
		memberDTO.setPassword(password);
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		
		if(memberDTO2!=null) {
			//아이디 비밀번호 일치
			System.out.println("비번 일치");
			memberDTO.setPassword(newPass);
			System.out.println("새 비밀번호 : " + memberDTO.getPassword());
			
			memberService.updatePass(memberDTO);
			
			return "redirect:/";
			
		}else {
			//아이디 비밀번호 틀림
			return "member/msg";
		}
	}


}

