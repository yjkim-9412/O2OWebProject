package com.itwillbs.controller;

import com.itwillbs.domain.MemberDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import java.util.Map;

import javax.inject.Inject;

@Controller
public class ProController {

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
	public String selectCat() {
		System.out.println("ProController mainCategory()");
		
		return "pro/mainCategory";
	}
	@RequestMapping(value = "/pro/lesson", method = RequestMethod.GET)
	public String lessonDetail() {
		System.out.println("ProController lesson()");
		 
		return "pro/lesson";
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
		return "redirect:/pro/lessonProWrap";
	}
	
	@RequestMapping(value = "/pro/lessonProWrap", method = RequestMethod.GET)
	public String musicLessonTh(@RequestParam(value = "chk") String chk,RedirectAttributes rdab) {
		System.out.println("ProController lessonProWrap()");
		rdab.addFlashAttribute("chk", chk);
		return "redirect:/pro/lessonDetail";
	}
	
	@RequestMapping(value = "/pro/lessonDetail", method = RequestMethod.GET)
	public String musicLesson(HttpServletRequest request,Model model) {
		System.out.println("ProController lessonDetail()");
		Map<String,?> map=RequestContextUtils.getInputFlashMap(request);
		String chk = map.values().toString();
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

		return "pro/lessonDetail";
	}
	@RequestMapping(value = "/pro/address", method = RequestMethod.GET)
	public String address() {
		System.out.println("ProController address()");
		 
		return "pro/address";
	}
	
	@RequestMapping(value = "/pro/iframe_map", method = RequestMethod.GET)
	public String iframe_map() {
		System.out.println("ProController iframe_map()");
		 
		return "pro/iframe_map";
	}

}
