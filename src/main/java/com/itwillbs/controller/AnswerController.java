package com.itwillbs.controller;


import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.service.AnswerService;

@Controller
public class AnswerController {
	
	@Inject
	private AnswerService answerService;

	@RequestMapping(value = "/requests/result", method = RequestMethod.GET)
	public String result() {

		return "requests/result";
	}

	@RequestMapping(value = "/category/result5", method = RequestMethod.GET)
	public String result5(HttpSession session, HttpServletRequest request) {

		Integer account = (Integer)(session.getAttribute("id"));

		if(account != null) {
			int account_id = (int)account;
			answerService.insertEstimates(account_id);

			System.out.println("session id : " + account_id);
			int estimates_id = answerService.getEstimates_id();

			System.out.println("estimates_id : " + estimates_id);

			EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
			int question_id = 0, answer_id = 0;

			for (int i = 0; i <= 4; i++) {
				if(request.getParameterValues("ans" + i) == null) {
					continue;
				}
				String[] ans = request.getParameterValues("ans" + i);

				String[] ques = request.getParameterValues("ques" + i);

				question_id = Integer.parseInt(ques[0]);
				String content = ans[0];

				AnswerDTO answerDTO = new AnswerDTO();
				answerDTO.setQuestions_id(question_id);
				answerDTO.setContents(content);

				answerDTO = answerService.getAnswer_id(answerDTO);

				answer_id = answerDTO.getId();

				System.out.println("question_id : " + ques[0] + ", answer_id : " + answer_id + ", content : " + ans[0]);

				estimatesMidDTO.setEstimates_id(estimates_id);
				estimatesMidDTO.setQuestion_id(question_id);
				estimatesMidDTO.setAnswer_id(answer_id);

				answerService.insertEstimatesMid(estimatesMidDTO);

			}

			String jibunAddress = request.getParameter("jibunAddress");
		if(jibunAddress.length() > 5) {
			System.out.println("여긴 주소 널값 아닐때");
			System.out.println("데이터 타입 : " + jibunAddress.getClass().getName());

			String[] address = jibunAddress.split(" ");

			String city = address[0];
			String district = address[1];
			String addistrict = address[2];

			CityDTO cityDTO = answerService.getCityId(city);
			int city_id = cityDTO.getId();

			DistrictDTO districtDTO = new DistrictDTO();
			districtDTO.setCity_id(city_id);
			districtDTO.setDistrict(district);

			DistrictDTO districtDTO2 = answerService.getDistrictsId(districtDTO);
			int district_id = districtDTO2.getId();

			AddistrictDTO addistrictDTO = new AddistrictDTO();
			addistrictDTO.setDistrict_id(district_id);
			addistrictDTO.setAddistrict(addistrict);

			AddistrictDTO addistrictDTO2 = answerService.getAddistrictId(addistrictDTO);
			int addistrict_id = addistrictDTO2.getId();

			String addressdetail = (String) request.getParameter("addressdetail");
			AddressDTO addressDTO = new AddressDTO();
			addressDTO.setCity_id(city_id);
			addressDTO.setDistrict_id(district_id);
			addressDTO.setAddistrict_id(addistrict_id);
			addressDTO.setAddressdetail(addressdetail);
			answerService.insertAddress(addressDTO);

			int maxAddrId = answerService.getMaxAddrId();

			HashMap<String, Integer> map = new HashMap<>();
			map.put("maxAddrId", maxAddrId);
			map.put("account_id", account_id);
			map.put("estimates_id", estimates_id);
			answerService.updateEstimates(map);

			return "redirect:/requests/result";
		}else {
			// 주소값이 null 일 때
			return "redirect:/requests/result";
		}

		}else {
			return "category/msg";
		}
	}
	
	@RequestMapping(value = "/category/result4", method = RequestMethod.GET)
	public String result4(HttpSession session, HttpServletRequest request) {

		Integer account = (Integer)(session.getAttribute("id"));

		if(account != null) {
			int account_id = (int)account;
			answerService.insertEstimates(account_id);

			System.out.println("session id : " + account_id);
			int estimates_id = answerService.getEstimates_id();

			System.out.println("estimates_id : " + estimates_id);

			EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
			int question_id = 0, answer_id = 0;

			for (int i = 0; i <= 3; i++) {
				if(request.getParameterValues("ans" + i) == null) {
					continue;
				}
				String[] ans = request.getParameterValues("ans" + i);

				String[] ques = request.getParameterValues("ques" + i);

				question_id = Integer.parseInt(ques[0]);
				String content = ans[0];

				AnswerDTO answerDTO = new AnswerDTO();
				answerDTO.setQuestions_id(question_id);
				answerDTO.setContents(content);

				answerDTO = answerService.getAnswer_id(answerDTO);

				answer_id = answerDTO.getId();

				System.out.println("question_id : " + ques[0] + ", answer_id : " + answer_id + ", content : " + ans[0]);

				estimatesMidDTO.setEstimates_id(estimates_id);
				estimatesMidDTO.setQuestion_id(question_id);
				estimatesMidDTO.setAnswer_id(answer_id);

				answerService.insertEstimatesMid(estimatesMidDTO);

			}

			String jibunAddress = request.getParameter("jibunAddress");
			if(jibunAddress.length() > 5) {
				System.out.println("여긴 주소 널값 아닐때");
				System.out.println("데이터 타입 : " + jibunAddress.getClass().getName());

				String[] address = jibunAddress.split(" ");

				String city = address[0];
				String district = address[1];
				String addistrict = address[2];

				CityDTO cityDTO = answerService.getCityId(city);
				int city_id = cityDTO.getId();

				DistrictDTO districtDTO = new DistrictDTO();
				districtDTO.setCity_id(city_id);
				districtDTO.setDistrict(district);

				DistrictDTO districtDTO2 = answerService.getDistrictsId(districtDTO);
				int district_id = districtDTO2.getId();

				AddistrictDTO addistrictDTO = new AddistrictDTO();
				addistrictDTO.setDistrict_id(district_id);
				addistrictDTO.setAddistrict(addistrict);

				AddistrictDTO addistrictDTO2 = answerService.getAddistrictId(addistrictDTO);
				int addistrict_id = addistrictDTO2.getId();

				String addressdetail = (String) request.getParameter("addressdetail");
				AddressDTO addressDTO = new AddressDTO();
				addressDTO.setCity_id(city_id);
				addressDTO.setDistrict_id(district_id);
				addressDTO.setAddistrict_id(addistrict_id);
				addressDTO.setAddressdetail(addressdetail);
				answerService.insertAddress(addressDTO);

				int maxAddrId = answerService.getMaxAddrId();

				HashMap<String, Integer> map = new HashMap<>();
				map.put("maxAddrId", maxAddrId);
				map.put("account_id", account_id);
				map.put("estimates_id", estimates_id);
				answerService.updateEstimates(map);

				return "redirect:/requests/result";
			}else {
				// 주소값이 null 일 때
				return "redirect:/requests/result";
			}

		}else {
			return "category/msg";
		}
	}

	@RequestMapping(value = "/category/result3", method = RequestMethod.GET)
	public String result3(HttpSession session, HttpServletRequest request) {

		Integer account = (Integer)(session.getAttribute("id"));

		if(account != null) {
			int account_id = (int)account;
			answerService.insertEstimates(account_id);

			System.out.println("session id : " + account_id);
			int estimates_id = answerService.getEstimates_id();

			System.out.println("estimates_id : " + estimates_id);

			EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
			int question_id = 0, answer_id = 0;

			for (int i = 0; i <= 2; i++) {
				if(request.getParameterValues("ans" + i) == null) {
					continue;
				}
				String[] ans = request.getParameterValues("ans" + i);

				String[] ques = request.getParameterValues("ques" + i);

				question_id = Integer.parseInt(ques[0]);
				String content = ans[0];

				AnswerDTO answerDTO = new AnswerDTO();
				answerDTO.setQuestions_id(question_id);
				answerDTO.setContents(content);

				answerDTO = answerService.getAnswer_id(answerDTO);

				answer_id = answerDTO.getId();

				System.out.println("question_id : " + ques[0] + ", answer_id : " + answer_id + ", content : " + ans[0]);

				estimatesMidDTO.setEstimates_id(estimates_id);
				estimatesMidDTO.setQuestion_id(question_id);
				estimatesMidDTO.setAnswer_id(answer_id);

				answerService.insertEstimatesMid(estimatesMidDTO);

			}

			String jibunAddress = request.getParameter("jibunAddress");
			if(jibunAddress.length() > 5) {
				System.out.println("여긴 주소 널값 아닐때");
				System.out.println("데이터 타입 : " + jibunAddress.getClass().getName());

				String[] address = jibunAddress.split(" ");

				String city = address[0];
				String district = address[1];
				String addistrict = address[2];

				CityDTO cityDTO = answerService.getCityId(city);
				int city_id = cityDTO.getId();

				DistrictDTO districtDTO = new DistrictDTO();
				districtDTO.setCity_id(city_id);
				districtDTO.setDistrict(district);

				DistrictDTO districtDTO2 = answerService.getDistrictsId(districtDTO);
				int district_id = districtDTO2.getId();

				AddistrictDTO addistrictDTO = new AddistrictDTO();
				addistrictDTO.setDistrict_id(district_id);
				addistrictDTO.setAddistrict(addistrict);

				AddistrictDTO addistrictDTO2 = answerService.getAddistrictId(addistrictDTO);
				int addistrict_id = addistrictDTO2.getId();

				String addressdetail = (String) request.getParameter("addressdetail");
				AddressDTO addressDTO = new AddressDTO();
				addressDTO.setCity_id(city_id);
				addressDTO.setDistrict_id(district_id);
				addressDTO.setAddistrict_id(addistrict_id);
				addressDTO.setAddressdetail(addressdetail);
				answerService.insertAddress(addressDTO);

				int maxAddrId = answerService.getMaxAddrId();

				HashMap<String, Integer> map = new HashMap<>();
				map.put("maxAddrId", maxAddrId);
				map.put("account_id", account_id);
				map.put("estimates_id", estimates_id);
				answerService.updateEstimates(map);

				return "redirect:/requests/result";
			}else {
				// 주소값이 null 일 때
				return "redirect:/requests/result";
			}

		}else {
			return "category/msg";
		}
	}
	
	@RequestMapping(value = "/category/result1", method = RequestMethod.GET)
	public String result1(HttpSession session, HttpServletRequest request) {

		Integer account = (Integer)(session.getAttribute("id"));

		if(account != null) {
			int account_id = (int)account;
			answerService.insertEstimates(account_id);

			System.out.println("session id : " + account_id);
			int estimates_id = answerService.getEstimates_id();

			System.out.println("estimates_id : " + estimates_id);

			EstimatesMidDTO estimatesMidDTO = new EstimatesMidDTO();
			int question_id = 0, answer_id = 0;

			String[] ans = request.getParameterValues("ans");

			String[] ques = request.getParameterValues("ques");

			question_id = Integer.parseInt(ques[0]);
			String content = ans[0];

			AnswerDTO answerDTO = new AnswerDTO();
			answerDTO.setQuestions_id(question_id);
			answerDTO.setContents(content);

			answerDTO = answerService.getAnswer_id(answerDTO);

			answer_id = answerDTO.getId();

			System.out.println("question_id : " + ques[0] + ", answer_id : " + answer_id + ", content : " + ans[0]);

			estimatesMidDTO.setEstimates_id(estimates_id);
			estimatesMidDTO.setQuestion_id(question_id);
			estimatesMidDTO.setAnswer_id(answer_id);

			answerService.insertEstimatesMid(estimatesMidDTO);

			String jibunAddress = request.getParameter("jibunAddress");

			if(jibunAddress.length() > 5) {
				System.out.println("여긴 주소 널값 아닐때");
				System.out.println("데이터 타입 : " + jibunAddress.getClass().getName());

				String[] address = jibunAddress.split(" ");

				String city = address[0];
				String district = address[1];
				String addistrict = address[2];

				CityDTO cityDTO = answerService.getCityId(city);
				int city_id = cityDTO.getId();

				DistrictDTO districtDTO = new DistrictDTO();
				districtDTO.setCity_id(city_id);
				districtDTO.setDistrict(district);

				DistrictDTO districtDTO2 = answerService.getDistrictsId(districtDTO);
				int district_id = districtDTO2.getId();

				AddistrictDTO addistrictDTO = new AddistrictDTO();
				addistrictDTO.setDistrict_id(district_id);
				addistrictDTO.setAddistrict(addistrict);

				AddistrictDTO addistrictDTO2 = answerService.getAddistrictId(addistrictDTO);
				int addistrict_id = addistrictDTO2.getId();

				String addressdetail = (String) request.getParameter("addressdetail");
				AddressDTO addressDTO = new AddressDTO();
				addressDTO.setCity_id(city_id);
				addressDTO.setDistrict_id(district_id);
				addressDTO.setAddistrict_id(addistrict_id);
				addressDTO.setAddressdetail(addressdetail);
				answerService.insertAddress(addressDTO);

				int maxAddrId = answerService.getMaxAddrId();

				HashMap<String, Integer> map = new HashMap<>();
				map.put("maxAddrId", maxAddrId);
				map.put("account_id", account_id);
				map.put("estimates_id", estimates_id);
				answerService.updateEstimates(map);

				return "redirect:/requests/result";
			}else {
				// 주소값이 null 일 때
				return "redirect:/requests/result";
			}

		}else {
			return "category/msg";
		}
	}
}
