package com.itwillbs.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import com.itwillbs.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.service.EstimatesService;

@Controller
public class EstimatesController {
	
	@Inject
	private EstimatesService estimatesService;
	
	@RequestMapping(value = "/requests/sent", method = RequestMethod.GET)
	public String request(HttpSession session, Model model) {
		
		int account_id = (int)session.getAttribute("id");
		
		List<List<GetEstimateDTO2>> result = new ArrayList<>();
		HashMap<String, Integer> map = new HashMap<>();
		map.put("account_id", account_id);
		
		List<Integer> estimatesId = estimatesService.getEstimatesId(account_id);
		for(int i = 0; i < estimatesId.size(); i++) {
			map.put("estimatesId", estimatesId.get(i));
			List<GetEstimateDTO2> getEstimateDTO = estimatesService.getEstimates(map);
			result.add(getEstimateDTO);
			for(int j = 0; j < getEstimateDTO.size(); j++) {
				System.out.println("요청서 id : "+ estimatesId.get(i) + " " + getEstimateDTO.get(j));
			}
		}

		model.addAttribute("result", result);
		System.out.println(result.get(0).get(0).getService_name());

		return "requests/sent";
	}
	
	@RequestMapping(value = "/requests/estimate", method = RequestMethod.GET)
	public String estimate(@RequestParam("estimates_id") int estimates_id, @RequestParam("service_name") String service_name, Model model, HttpSession session) {
		int account_id = (int)session.getAttribute("id");

		System.out.println("estimates_id : " + estimates_id);

			HashMap<String, Integer> map = new HashMap<>();
			map.put("account_id", account_id);
			map.put("estimatesId", estimates_id);

			List<GetEstimateDTO2> getEstimateDTO = estimatesService.getEstimates(map);
			System.out.println("이것은 요청서 :" + getEstimateDTO);

			List<EstimatesMidDTO> estimatesMidDTOList = estimatesService.getEstimatesMid(estimates_id);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");


			model.addAttribute("service_name", service_name);
			model.addAttribute("date", sdf.format(estimatesMidDTOList.get(0).getDate()));
			model.addAttribute("getEstimateDTO", getEstimateDTO);

		List<ProAddrDTO> proAddrList = new ArrayList<>();

		List<ProEstimatesDTO> proEstimatesDTO = estimatesService.getProEstimates2(estimates_id);

		if(proEstimatesDTO.size() != 0) {

			for (int i = 0; i < proEstimatesDTO.size(); i++) {
				ProAddrDTO proAddrDTO = estimatesService.getProAddr(proEstimatesDTO.get(i).getPro_id());
				proAddrList.add(proAddrDTO);
				System.out.println(proAddrDTO);
			}

			System.out.println(proEstimatesDTO);

			model.addAttribute("proEstimatesDTO", proEstimatesDTO);
			model.addAttribute("proAddrList", proAddrList);
			return "requests/estimate";
		}else {
			return "requests/estimate_null";
		}

	}
	
	@RequestMapping(value = "/requests/sentsent", method = RequestMethod.GET)
	public String sentsent(HttpSession session, Model model) {

		int account_id = (int)session.getAttribute("id");
		
		List<Integer> estimatesId = estimatesService.getEstimatesId(account_id);
		System.out.println(estimatesId);
		if(estimatesId.size() == 0) {
			return "requests/sent_error";
		}
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		List<List<GetProEstimateDTO>> getProEstimateDTO = new ArrayList<List<GetProEstimateDTO>>();
		List<String> date = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");

		map.put("account_id", account_id);

		for(int i = 0; i < estimatesId.size(); i++) {
			map.put("estimates_id", estimatesId.get(i));
			getProEstimateDTO.add(estimatesService.getProEstimates(map));
			date.add(sdf.format((estimatesService.getEstimatesMid(estimatesId.get(i)).get(0).getDate())));
		}

		System.out.println(estimatesId);
		System.out.println("이것은 날짜 " + date);
		model.addAttribute("estimatesId", estimatesId);
		model.addAttribute("getProEstimateDTO", getProEstimateDTO);
		model.addAttribute("date",date);
		
		return "requests/sentsent";
	}

	@RequestMapping(value = "/requests/sent_error", method = RequestMethod.GET)
	public String login() {

		return "requests/sent_error";
	}
}
