package com.itwillbs.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.GetEstimateDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.domain.ProEstimateDTO;
import com.itwillbs.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.*;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

@Controller
public class ProController {

	@Resource(name = "uploadPath")
	private String uploadPath;



	@Autowired
	private JavaMailSender mailSender;
	
	@Inject
	private AddressDTO addressDTO;
		
	@Autowired
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
    
    @RequestMapping(value = "/pro/health", method = RequestMethod.GET)
	public String health() {
		System.out.println("ProController health()");
		
		return "pro/health";
	}
    
    @RequestMapping(value = "/pro/event", method = RequestMethod.GET)
	public String event() {
		System.out.println("ProController event()");
		
		return "pro/event";
	}
    
    @RequestMapping(value = "/pro/clean", method = RequestMethod.GET)
	public String clean() {
		System.out.println("ProController clean()");
		
		return "pro/clean";
	}
    
	@RequestMapping(value = "/pro/secCategory", method = RequestMethod.GET)
	public String secCategory() {
		System.out.println("ProController secCategory()");
		 
		return "pro/secCategory";
	}
	
	@RequestMapping(value = "/pro/secCategory_health", method = RequestMethod.GET)
	public String secCategory_health() {
		System.out.println("ProController secCategory_health()");
		 
		return "pro/secCategory_health";
	}
	
	@RequestMapping(value = "/pro/secCategory_event", method = RequestMethod.GET)
	public String secCategory_event() {
		System.out.println("ProController secCategory_event()");
		 
		return "pro/secCategory_event";
	}
	
	@RequestMapping(value = "/pro/secCategory_clean", method = RequestMethod.GET)
	public String secCategory_clean() {
		System.out.println("ProController secCategory_clean()");
		 
		return "pro/secCategory_clean";
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
		String services_id=requset.getParameter("selcat_num");
//		model.addAttribute("chk", chk);
		model.addAttribute("services_id", services_id);
		return "redirect:/pro/service_lesson";
	}
	
	@RequestMapping(value = "/pro/service_lesson", method = RequestMethod.GET)
	public String service_lesson(@RequestParam(value = "services_id") String services_id,Model model) {
		System.out.println("ProController service_lesson()");
		
		if(services_id.equals("5")) {
			model.addAttribute("music", 1);
		}else {
			model.addAttribute("music", 0);
		}
		if(services_id.equals("1")) {
			model.addAttribute("dan", 1);
		}else {
			model.addAttribute("dan", 0);
		}
		if(services_id.equals("2")) {
			model.addAttribute("lang", 1);
		}else {
			model.addAttribute("lang", 0);
		}
		model.addAttribute("services_id", services_id);
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
	
	@RequestMapping(value = "/pro/healthPro", method = RequestMethod.GET)
	public String healthPro(HttpServletRequest requset,Model model) {
		System.out.println("ProController lessonPro()");
		String services_id=requset.getParameter("selcat_num");
		model.addAttribute("services_id", services_id);
		return "redirect:/pro/service_health";
	}
	
	@RequestMapping(value = "/pro/service_health", method = RequestMethod.GET)
	public String service_health(@RequestParam(value = "services_id") String services_id,Model model) {
		System.out.println("ProController service_lesson()");
		
		if(services_id.equals("3")) {
			model.addAttribute("deliv", 1);
		}else {
			model.addAttribute("deliv", 0);
		}
		if(services_id.equals("4")) {
			model.addAttribute("health", 1);
		}else {
			model.addAttribute("health", 0);
		}

		model.addAttribute("services_id", services_id);

		return "pro/service_health";
	}
	
	@RequestMapping(value = "/pro/eventPro", method = RequestMethod.GET)
	public String eventPro(HttpServletRequest requset,Model model) {
		System.out.println("ProController eventPro()");
		String services_id=requset.getParameter("selcat_num");
		model.addAttribute("services_id", services_id);
		return "redirect:/pro/service_event";
	}
	
	@RequestMapping(value = "/pro/service_event", method = RequestMethod.GET)
	public String service_event(@RequestParam(value = "services_id") String services_id,Model model) {
		System.out.println("ProController service_event()");
		
		if(services_id.equals("12")) {
			model.addAttribute("party", 1);
		}else {
			model.addAttribute("party", 0);
		}
		if(services_id.equals("13")) {
			model.addAttribute("mc", 1);
		}else {
			model.addAttribute("mc", 0);
		}
		if(services_id.equals("14")) {
			model.addAttribute("vidio", 1);
		}else {
			model.addAttribute("vidio", 0);
		}

		model.addAttribute("services_id", services_id);

		return "pro/service_event";
	}
	
	@RequestMapping(value = "/pro/cleanPro", method = RequestMethod.GET)
	public String cleanPro(HttpServletRequest requset,Model model) {
		System.out.println("ProController cleanPro()");
		String services_id=requset.getParameter("selcat_num");
		System.out.println(services_id);
		model.addAttribute("services_id", services_id);
		return "redirect:/pro/service_clean";
	}
	
	@RequestMapping(value = "/pro/service_clean", method = RequestMethod.GET)
	public String service_clean(@RequestParam(value = "services_id") String services_id,Model model) {
		System.out.println("ProController service_clean()");
		
		if(services_id.equals("7")) {
			model.addAttribute("air", 1);
		}else {
			model.addAttribute("air", 0);
		}
		if(services_id.equals("8")) {
			model.addAttribute("mold", 1);
		}else {
			model.addAttribute("mold", 0);
		}
		if(services_id.equals("9")) {
			model.addAttribute("move", 1);
		}else {
			model.addAttribute("move", 0);
		}
		if(services_id.equals("10")) {
			model.addAttribute("bed", 1);
		}else {
			model.addAttribute("bed", 0);
		}

		model.addAttribute("services_id", services_id);

		return "pro/service_clean";
	}
	
	@RequestMapping(value = "/pro/address", method = RequestMethod.GET)
	public String address(HttpServletRequest request,Model model) {
		System.out.println("ProController address()");

		String services_id=request.getParameter("services_id");
		model.addAttribute("services_id", services_id);
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
		String services_id = request.getParameter("services_id");
		String[] addr=address.split(" ");
		String[] extraAddr=extraAddress.split(",");
		addressDTO= proService.passAddress(addr,extraAddr,detailAddress,lat,lng);
		model.addAttribute("services_id", services_id);
		return "pro/proinsert";
	}
	
	@RequestMapping(value = "/pro/ok", method = RequestMethod.POST)
	public String ok(HttpServletRequest request,ProDTO proDTO) {
		System.out.println("ProController ok()");
		
		proService.insertAddress(addressDTO);
		proService.insertPro(proDTO);

		return "redirect:/";
	}
	
	@RequestMapping(value = "/pro/dupcheck", method = RequestMethod.GET)
	public ResponseEntity<String> dupcheck(HttpServletRequest request) {
		System.out.println("ProController dupcheck()");
		ResponseEntity<String> entitiy=null;
		String result="";
		
		String email=request.getParameter("email");
		ProDTO proDTO= proService.getPro(email);
		
		if(proDTO!=null) {
			result="emaildup";
		}else {
			result="emailok";
		}

		entitiy=new ResponseEntity<String>(result,HttpStatus.OK);
		return entitiy;
	}
	
	@RequestMapping(value="/pro/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET(String email) throws Exception{
		System.out.println("mailCheck()"+email);

				
		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		
		/* 이메일 보내기 */
		String setFrom = "lamia9304@naver.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." +
				"<br><br>" + 
				"인증 번호는 " + checkNum + "입니다." + 
				"<br>" + 
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";		
		
		try {
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);
			
		}catch(Exception e) {
			e.printStackTrace();
		}		
		
		String num = Integer.toString(checkNum);
		
		return num;
		
	}
		
	@RequestMapping(value = "/pro/info", method = RequestMethod.GET)
	 public String info(Model m,HttpSession session, String num) {
	    	System.out.println("ProController info()");
			int id=Integer.parseInt(num);
            System.out.println(id);


			if(id!=0){
				System.out.println("집가고싶다");

				GetProDTO proDTO=proService.getProid(id);
				m.addAttribute("proDTO", proDTO);
			}else{
				System.out.println("안뜸");
				String email = session.getAttribute("email").toString();
				GetProDTO proDTO = proService.getProemail(email);
				m.addAttribute("proDTO",proDTO);

			}
		return "pro/info";


	}
	
	@RequestMapping(value = "/pro/estimates", method = RequestMethod.GET)
	 public String estimate(HttpSession session,Model model,HttpServletRequest request) {
	    	System.out.println("ProController estimate()");

	    	String email = session.getAttribute("email").toString();
	    	int pageSize=proService.getPageSize();
			String pageNum=request.getParameter("pageNum");
			if(pageNum==null){
				pageNum="1";
			}
			ProDTO proDTO = proService.getPro(email);
			PageDTO pageDTO=new PageDTO();
			pageDTO.setPageSize(pageSize);
			pageDTO.setPageNum(pageNum);
			pageDTO.setServices_id(proDTO.getServices_id());
			
			List<GetEstimateDTO> estimateDTO=proService.getEstimateList(pageDTO);
			Map<Integer,String> hashmap=new HashMap<Integer, String>();
			
			for(int i=0;i<estimateDTO.size();i++) {
				if(estimateDTO.get(i).getAccount_id()!=0) {
					hashmap.put(estimateDTO.get(i).getEstimates_id(), estimateDTO.get(i).getAccount_name());
				}
			}
						
			int currentPage=Integer.parseInt(pageDTO.getPageNum());
			int count=proService.getEstimateCount();
			int pageBlock=10;
			int startPage=(currentPage-1)/pageBlock*pageBlock+1;
			int endPage=startPage+pageBlock-1;
			int pageCount= count/10+ (count%10==0?0:1);
			if(endPage > pageCount){
				endPage=pageCount;
			}
			pageDTO.setCount(count);
			pageDTO.setPageBlock(pageBlock);
			pageDTO.setStartPage(startPage);
			pageDTO.setEndPage(endPage);
			pageDTO.setPageCount(pageCount);
			
			model.addAttribute("hashmap", hashmap);
			model.addAttribute("estimateDTO", estimateDTO);
			model.addAttribute("pageDTO", pageDTO);

			return "pro/estimates";
	    }
	@RequestMapping(value = "/pro/login", method = RequestMethod.GET)
	 public String login() {

	        return "pro/loginForm";
	    }
	
	@RequestMapping(value = "/pro/loginPro", method = RequestMethod.POST)
	public String loginPro(ProDTO proDTO,HttpSession session) {
		System.out.println("ProController loginPro()");
		
		ProDTO proDTO2 = proService.proCheck(proDTO);
		if(proDTO2 != null) {
			session.setAttribute("email",proDTO.getEmail());
		}else {
			return "member/msg";
		}
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/pro/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/pro/proEstimateForm", method = RequestMethod.GET)
	public String proEstimateForm(String num,String name,Model model,HttpSession session) {
		System.out.println("ProController proEstimateForm()");
		
		GetProDTO proDTO = proService.getProemail(session.getAttribute("email").toString());
		int estimates_id=Integer.parseInt(num);
		int account_id=proService.getAccId(estimates_id);
		
		ProEstimateDTO estimateDTO = new ProEstimateDTO();
		estimateDTO.setAccount_id(account_id);
		estimateDTO.setEstimates_id(estimates_id);
		estimateDTO.setPro_id(proDTO.getId());
		
		model.addAttribute("proDTO", proDTO);
		model.addAttribute("estimateDTO", estimateDTO);
		return "pro/proEstimateForm";
	}
	
	@RequestMapping(value = "/pro/proEstimatePro", method = RequestMethod.GET)
	public String proEstimatePro(ProEstimateDTO proEstimateDTO) {
		System.out.println("ProController proEstimatePro()");
		
		proService.insertProEstimate(proEstimateDTO);

		return "redirect:/";
	}

	@RequestMapping(value = "/pro/fwritePro", method = RequestMethod.POST)
	public String fwritePro(HttpServletRequest request, MultipartFile file) throws Exception{




//		BoardDTO boardDTO=new BoardDTO();
//		boardDTO.setName(request.getParameter("name"));
//		boardDTO.setPass(request.getParameter("pass"));
//		boardDTO.setSubject(request.getParameter("subject"));
//		boardDTO.setContent(request.getParameter("content"));


		// 파일이름 => 랜덤문자_파일이름
		UUID uuid=UUID.randomUUID();
		String fileName=uuid.toString()+"_"+file.getOriginalFilename();
		// 업로드 파일을 => resources/upload 폴더 복사
		File uploadFile=new File(uploadPath,fileName);
		FileCopyUtils.copy(file.getBytes(), uploadFile);

//		boardDTO.setFile(fileName);
//
//		//디비 insert
//
//		boardService.insertBoard(boardDTO);

		return "redirect:/pro/info";
	}


	@RequestMapping(value = "/pro/updatePro", method = RequestMethod.POST)
	public String update(HttpSession session,Model model,HttpServletRequest request, MultipartFile file) throws IOException {

		 String email=session.getAttribute("email").toString();
		 GetProDTO proDTO=proService.getProemail(email);

		UUID uuid=UUID.randomUUID();
		String fileName=uuid.toString()+"_"+file.getOriginalFilename();
		// 업로드 파일을 => resources/upload 폴더 복사
		File uploadFile=new File(uploadPath,fileName);
		FileCopyUtils.copy(file.getBytes(), uploadFile);
		 return "redirect:/pro/info";

	}


	@RequestMapping(value="/pro/delete",method = RequestMethod.GET)
	public String delete(HttpSession session,Model model){

		String email = (String)session.getAttribute("email");

		ProDTO proDTO = proService.getPro(email);
		model.addAttribute("proDTO", proDTO);

		return "pro/delete";
	}

	@RequestMapping(value = "/pro/deletePro", method = RequestMethod.GET)
	public String deletePro(ProDTO proDTO) {

		ProDTO proDTO2=proService.proCheck(proDTO);

		if(proDTO!=null) {
			proService.deletePro(proDTO);
		}
		else{
			return "redirect:/pro/deleteMsg";
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/pro/ImgUpdate", method = RequestMethod.GET)
	public String ImgUpdate(HttpSession session,Model m) {

		String email = session.getAttribute("email").toString();
		GetProDTO proDTO = proService.getProemail(email);
		m.addAttribute("proDTO",proDTO);
		return "pro/ImgUpdate";
	}



}
