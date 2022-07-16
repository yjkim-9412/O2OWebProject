
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

			List<ReviewDTO> reviewDTO3=reviewService.getpronameservice();

		double avg2=reviewService.getAllreviewavg();
		double roundavg2=Math.round(avg2);
		int count2=reviewService.getAllreviewcount();

		ReviewDTO reviewDTO2=new ReviewDTO();
		reviewDTO2.setPro_id(1);

		int count1=reviewService.getReviewCount(reviewDTO2.getPro_id());
		double avg1=reviewService.getreviewavg(reviewDTO2.getPro_id());
		double roundavg1=Math.round(avg1);




			model.addAttribute("reviewDTO", reviewDTO);
			model.addAttribute("count2", count2);
			model.addAttribute("roundavg2", roundavg2);
			model.addAttribute("reviewDTO3",reviewDTO3);

			model.addAttribute("count1",count1);
			model.addAttribute("roundavg1",roundavg1);



	        return "home";
	        
	    }
		
		
		
	}
	

