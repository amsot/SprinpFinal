package mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Place;
import mvc.service.PlaceService;

@Controller
public class PlaceController {
	
	@Autowired PlaceService pla;
	
	//장소 등록 폼
	@RequestMapping(value="/place/placeInsert.do",method=RequestMethod.GET)
	public void placeInsert() {
		
	}
	
	//장소 등록 처리 
	@RequestMapping(value="/place/placeInsert.do",method=RequestMethod.POST)
	public String placeInsertProc(Place place,Model model,HttpSession session) {
		System.out.println(place);
		place.setCom_id((String)session.getAttribute("com_id"));
		System.out.println(place);
		boolean insertResult = pla.placeInsert(place);
		 
		 if(insertResult) {
			
			 model.addAttribute("msg","장소 정보가 입력되었습니다.");
			 model.addAttribute("url","/company/main.do");
		 }else {
			
			 model.addAttribute("msg","장소 정보를 입력할 수 없습니다.");
			 model.addAttribute("url","/place/placeInsert.do");
		 }
		return "util/alert";
	}
	
	//장소목록 불러오기 
	@RequestMapping(value="/place/placeList.do")
	public String getPlaceList(Place place,Model model) {
		System.out.println("장소목록가져오기");
		List<Place> list = pla.getPlaceList();
		model.addAttribute("list", list);
		return "place/placeList";
		
	}
	
	//장소 상세보기 
	@RequestMapping(value="/place/placeView.do",method=RequestMethod.GET)
	public String placeView(Place plaview, Model model) {
		model.addAttribute("plaview", pla.placeView(plaview)	);
		
		return "place/placeView";
	}
	
}
