package com.itwillbs.controller;

import javax.servlet.http.HttpServletRequest;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.ProService;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;

@Controller
public class ProController {
	
	@Inject
	private AddressDTO addressDTO;
		
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
////		String[] selArr = requset.getParameterValues("selcat_num");
//		String chk="";
//		for(int i=0;i<selArr.length;i++) {
//			chk+=selArr[i];
//		}
//		System.out.println(chk);
		String serviceId=requset.getParameter("selcat_num");
//		model.addAttribute("chk", chk);
		model.addAttribute("serviceId", serviceId);
		return "redirect:/pro/service_lesson";
	}
	
	@RequestMapping(value = "/pro/service_lesson", method = RequestMethod.GET)
	public String service_lesson(@RequestParam(value = "serviceId") String serviceId,Model model) {
		System.out.println("ProController service_lesson()");
		
		if(serviceId.equals("5")) {
			model.addAttribute("music", 1);
		}else {
			model.addAttribute("music", 0);
		}
		if(serviceId.equals("1")) {
			model.addAttribute("dan", 1);
		}else {
			model.addAttribute("dan", 0);
		}
		if(serviceId.equals("2")) {
			model.addAttribute("lang", 1);
		}else {
			model.addAttribute("lang", 0);
		}
		model.addAttribute("serviceId", serviceId);
//		if(sel.contains("0")) {
//			model.addAttribute("music", 1);
//		}else {
//			model.addAttribute("music", 0);
//		}
//		if(sel.contains("1")) {
//			model.addAttribute("lang", 1);
//		}else {
//			model.addAttribute("lang", 0);
//		}
//		if(sel.contains("2")) {
//			model.addAttribute("dan", 1);
//		}else {
//			model.addAttribute("dan", 0);
//		}
		return "pro/service_lesson";
	}
	
	@RequestMapping(value = "/pro/address", method = RequestMethod.GET)
	public String address(HttpServletRequest request,Model model) {
		System.out.println("ProController address()");
//		String[] selArr = request.getParameterValues("sel");
//		String service_chk="";
//		for(int i=0;i<selArr.length;i++) {
//			service_chk+=selArr[i]+",";
//			if(i==selArr.length-1) {
//				service_chk= service_chk.substring(0,service_chk.length()-1);
//			}
//		}
//		System.out.println(service_chk);
//		proDTO.setServiceId(service_chk);
		String serviceId=request.getParameter("serviceId");
		model.addAttribute("serviceId", serviceId);
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
		String detailAddress=request.getParameter("sample3_detailAddress");
		double lat =Double.parseDouble(request.getParameter("lat"));
		double lng =Double.parseDouble(request.getParameter("lng"));
		String serviceId = request.getParameter("serviceId");
		String[] addr=address.split(" ");
		String[] extraAddr=extraAddress.split(",");
		addressDTO= proService.passAddress(addr,extraAddr,detailAddress,lat,lng);
		model.addAttribute("serviceId", serviceId);
		return "pro/proinsert";
	}
	
	@RequestMapping(value = "/pro/ok", method = RequestMethod.POST)
	public String ok(HttpServletRequest request,ProDTO proDTO) {
		System.out.println("ProController ok()");
		
//		proService.insertAddress(addressDTO);
//		proService.insertPro(proDTO);

		return "redirect:/";
	}
	
	@RequestMapping(value = "/pro/dupcheck", method = RequestMethod.GET)
	public ResponseEntity<String> dupcheck(HttpServletRequest request) {
		System.out.println("ProController dupcheck()");
		ResponseEntity<String> entitiy=null;
		String result="";
		
		String email=request.getParameter("email");
		ProDTO proDTO= proService.getPro(email);
		
		System.out.println(email);
		
		if(proDTO!=null) {
			result="emaildup";
		}else {
			result="emailok";
		}
		System.out.println(proDTO.getEmail()+", "+result);
		entitiy=new ResponseEntity<String>(result,HttpStatus.OK);
		return entitiy;
	}

}
