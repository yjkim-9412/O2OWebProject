package com.itwillbs.controller;

import com.itwillbs.domain.MemberDTO;
import javax.servlet.http.HttpSession;

import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    @RequestMapping(value = "/pro/info", method = RequestMethod.GET)
    public String info(Model m) {
    	System.out.println("ProController info()");
//        proService.proCheck();
        ProDTO proDTO = new ProDTO(); 
        proDTO =  proService.proCheck();
        m.addAttribute("proDTO" , proDTO);
   
        return "pro/info";
    }
}
