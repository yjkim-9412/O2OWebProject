
	package com.itwillbs.myweb2;

	import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

	import javax.inject.Inject;

	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;

	import com.itwillbs.domain.ReviewDTO;
	import com.itwillbs.service.ReviewService;
import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

	@Controller
	public class HomeController {
		
		@Inject
		private ReviewService reviewService;
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
	    public String Maroo(Model model) {
			List<ReviewDTO> reviewDTO =reviewService.getratingfive();
			Collections.shuffle(reviewDTO);
		
		double avg2=reviewService.getAllreviewavg();
		double roundavg2=Math.round(avg2);
		int count2=reviewService.getAllreviewcount();
		
		
			
	
			model.addAttribute("reviewDTO", reviewDTO);
			model.addAttribute("count2", count2);
			model.addAttribute("roundavg2", roundavg2);
			
	        return "home";
	        
	    }
		
		
		
	}
	

