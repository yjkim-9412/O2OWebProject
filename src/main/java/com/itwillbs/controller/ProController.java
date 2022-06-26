package com.itwillbs.controller;

import javax.servlet.http.HttpServletRequest;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.ProService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;

@Controller
public class ProController {
	@Inject
	private ProDTO proDTO;
	
	@Inject
    private ProService proService;

    @RequestMapping(value = "/pro/proInsert", method = RequestMethod.GET)
    public String proInsert() {

        return "pro/ProInsertForm";
    }

    @RequestMapping(value = "/pro/InsertPro", method = RequestMethod.GET)
    public String InsertPro(ProDTO proDTO) {
        proService.insertPro(proDTO);
        return "redirect:/pro/login";
    }
    @RequestMapping(value = "/pro/mainCategory", method = RequestMethod.GET)
	public String mainCategory() {
		System.out.println("ProController mainCategory()");
		
		return "pro/mainCategory";
	}
    
    @RequestMapping(value = "/pro/lesson", method = RequestMethod.GET)
	public String lesson() {
		System.out.println("ProController lesson()");
		
		return "pro/lesson";
	}
    
	@RequestMapping(value = "/pro/secCategory", method = RequestMethod.GET)
	public String secCategory() {
		System.out.println("ProController secCategory()");
		 
		return "pro/secCategory";
	}
	
	@RequestMapping(value = "/pro/lessonPro", method = RequestMethod.GET)
	public String lessonDetailPro(HttpServletRequest requset,Model model) {
		System.out.println("ProController lessonPro()");
		String[] selArr = requset.getParameterValues("selcat_num");
		String chk="";
		for(int i=0;i<selArr.length;i++) {
			chk+=selArr[i];
		}
		System.out.println(chk);
		model.addAttribute("chk", chk);
		return "redirect:/pro/service_lesson";
	}
	
	@RequestMapping(value = "/pro/service_lesson", method = RequestMethod.GET)
	public String service_lesson(@RequestParam(value = "chk") String chk,Model model) {
		System.out.println("ProController service_lesson()");
		if(chk.contains("0")) {
			System.out.println("chk.contains('0')");
			model.addAttribute("music", 1);
		}else {
			model.addAttribute("music", 0);
		}
		if(chk.contains("1")) {
			System.out.println("chk.contains('1')");
			model.addAttribute("lang", 1);
		}else {
			model.addAttribute("lang", 0);
		}
		if(chk.contains("2")) {
			System.out.println("chk.contains('2')");
			model.addAttribute("dan", 1);
		}else {
			model.addAttribute("dan", 0);
		}
		return "pro/service_lesson";
	}
	
	@RequestMapping(value = "/pro/address", method = RequestMethod.GET)
	public String address(HttpServletRequest request) {
		System.out.println("ProController address()");
		String[] selArr = request.getParameterValues("sel");
		String service_chk="";
		for(int i=0;i<selArr.length;i++) {
			service_chk+=selArr[i]+",";
			if(i==selArr.length-1) {
				service_chk= service_chk.substring(0,service_chk.length()-1);
			}
		}
		System.out.println(service_chk);
		proDTO.setServiceId(service_chk);
		return "pro/address";
	}
	
	@RequestMapping(value = "/pro/iframe_map", method = RequestMethod.GET)
	public String iframe_map() {
		System.out.println("ProController iframe_map()");
		 
		return "pro/iframe_map";
	}
	
	@RequestMapping(value = "/pro/proinsert", method = RequestMethod.GET)
	public String proinsert(HttpServletRequest request,Model model) {
		System.out.println("ProController proinsert()");
		String address=request.getParameter("sample3_address");
		String extraAddress=request.getParameter("sample3_extraAddress");
		String[] addr=address.split(" ");
		String[] extraAddr=extraAddress.split(",");
		
		if(extraAddress=="") {
			proDTO.setCity(addr[0]);
			proDTO.setGu(addr[1]);
			proDTO.setDong(addr[2]);
			model.addAttribute("city", proDTO.getCity());
			model.addAttribute("gu", proDTO.getGu());
			model.addAttribute("dong", proDTO.getDong());
			System.out.println(addr[0]+","+addr[1]+","+addr[2]);
		}else {
			proDTO.setCity(addr[0]);
			proDTO.setGu(addr[1]);
			proDTO.setDong(extraAddr[0]);
			model.addAttribute("city", proDTO.getCity());
			model.addAttribute("gu", proDTO.getGu());
			model.addAttribute("dong", proDTO.getDong());
			System.out.println(addr[0]+","+addr[1]+","+extraAddr[0]);
		}
		model.addAttribute("serviceId", proDTO.getServiceId());
		
		return "pro/proinsert";
	}
	
	@RequestMapping(value = "/pro/ok", method = RequestMethod.POST)
	public String ok(HttpServletRequest request) {
		System.out.println("ProController ok()");
		String serviceId=request.getParameter("serviceId");
		String city=request.getParameter("city");
		String gu=request.getParameter("gu");
		String dong=request.getParameter("dong");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		String gender=request.getParameter("gender");
		
		System.out.printf("%s ,%s ,%s ,%s ,%s ,%s ,%s ,%s ,%s\n",serviceId,city,gu,dong,email,pass,name,tel,gender);
				
		return "redirect:/";
	}

}
