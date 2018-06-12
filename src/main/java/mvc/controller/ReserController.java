package mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.dto.Place;
import mvc.dto.Reser;
import mvc.service.ReserService;

@Controller
public class ReserController {

	@Autowired ReserService res;
	
	//예약된 목록 불러오기 
	@RequestMapping(value="/place/placeView.do")
	public String getReserList(Reser reser,Model model) {
		
		List<Reser> list = res.getReserList();
		
		model.addAttribute("reser", list);
		System.out.println("34345555555"+reser);
		return "place/placeView";
	}
}
