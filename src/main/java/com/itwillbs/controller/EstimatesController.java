package com.itwillbs.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.AnswerDTO;
import com.itwillbs.domain.EstimatesDTO;
import com.itwillbs.domain.EstimatesMidDTO;
import com.itwillbs.domain.GetEstimateDTO2;
import com.itwillbs.domain.GetProEstimateDTO;
import com.itwillbs.domain.ProEstimatesDTO;
import com.itwillbs.domain.QuestionDTO;
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
	public String estimate(@RequestParam("estimates_id") int estimates_id, Model model) {

		System.out.println("estimates_id : " + estimates_id);

		List<ProEstimatesDTO> proEstimatesDTO = estimatesService.getProEstimates2(estimates_id);
		System.out.println(proEstimatesDTO);
		
		model.addAttribute("proEstimatesDTO", proEstimatesDTO);
		
		return "requests/estimate";
	}
	
	@RequestMapping(value = "/requests/sentsent", method = RequestMethod.GET)
	public String sentsent(HttpSession session, Model model) {

		int account_id = (int)session.getAttribute("id");
		
		List<Integer> estimatesId = estimatesService.getEstimatesId(account_id);
		System.out.println(estimatesId);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		List<List<GetProEstimateDTO>> getProEstimateDTO = new ArrayList<List<GetProEstimateDTO>>();
		map.put("account_id", account_id);
		
		for(int i = 0; i < estimatesId.size(); i++) {
			map.put("estimates_id", estimatesId.get(i));
			getProEstimateDTO.add(estimatesService.getProEstimates(map));
		}
		
		model.addAttribute("estimatesId", estimatesId);
		model.addAttribute("getProEstimateDTO", getProEstimateDTO);
		
		return "requests/sentsent";
	}
}
