package mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mvc.dto.Place;
import mvc.dto.Reser;
import mvc.service.PlaceService;
import mvc.util.Paging;

@Controller
public class PlaceController {
	
	@Autowired ServletContext context;
	@Autowired PlaceService res;
	@Autowired PlaceService pla;
	
	//장소 등록 폼
	@RequestMapping(value="/place/placeInsert.do",method=RequestMethod.GET)
	public void placeInsert() { }
	
	//장소 등록 처리 
	@RequestMapping(value="/place/placeInsert.do",method=RequestMethod.POST)
	public String placeInsertProc(Place place,Model model,HttpSession session,MultipartFile file) {
		System.out.println(place);
		
		System.out.println(session.getAttribute("userid"));
		place.setCom_id((String)session.getAttribute("userid"));
		
		System.out.println("======"+file.getOriginalFilename());
		
//		//이미지업로드 
//		//고유식별자 
		String uID = UUID.randomUUID().toString().split("-")[0];
//		
//		//파일이 저장될 경로 
		String realpath = context.getRealPath("resources/img");
//		
//		//파일이 저장될 이름
		String stored = uID+"-"+file.getOriginalFilename();
//		
//		//경로,파일
		File dest = new File(realpath,stored);
//		
		System.out.println(dest);
//		
//		//파일 업로드 
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		
//		//DB에 기록
		place.setImg(stored);
		
//		서비스호출
//		pla.placeInsert(Place);
		
		
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
	public String getPlaceList(Place place,Model model, @RequestParam(defaultValue="0")int pageNo) {
//		
//		List<Place> list = pla.getPlaceList();
//		model.addAttribute("list", list);
		
		//totalCount : DB에서 조회 
		int totalCount = pla.getTotalCount();
		
		//전체 대상에 대한 페이징
		Paging paging = new Paging(totalCount, pageNo);
		model.addAttribute("paging",paging);
		
		//페이징처리된 게시글 목록(현재)
		List list = pla.getPagingList(paging);
		model.addAttribute("list",list);
//		System.out.println(list.get(0));
		return "place/placeList";
		
	}
	
	//장소 상세보기 
	@RequestMapping(value="/place/placeView.do",method=RequestMethod.GET)
	public String placeView(Place plaview, Model model,Reser reser) {
		System.out.println(plaview);
		model.addAttribute("plaview", pla.placeView(plaview)	);
		System.out.println("34345555555"+reser);
//		List<Reser> list = res.getReserList(reser);
		List<Reser> list = pla.getReserList(reser);
		System.out.println("34345555555"+reser);
		model.addAttribute("reser", list);
		System.out.println("34345555555"+reser);
		return "place/placeView";
	}
	//장소 삭제하기 
	@RequestMapping(value="/place/placeDelete.do",method=RequestMethod.GET)
	public String placeDelete(Place place)	{
		pla.placeDelete(place);
		return "redirect:/place/placeList.do";
	}
	
	//장소 정보 수정하기 
	@RequestMapping(value="/place/placeUpdate.do",method=RequestMethod.GET)
	public void placeUpdate(Place plaview,Model model) {
		model.addAttribute("plaUpdate",pla.placeView(plaview));
	}
	
	//장소 정보 수정하기 활성화
	
	@RequestMapping(value="/place/placeUpdate.do",method=RequestMethod.POST)
	public String placeUpdateProcess(Place place,Model model) {
		pla.placeUpdate(place);
		 model.addAttribute("msg","수정되었습니다");
		 model.addAttribute("url","/place/placeList.do");
	 
	return "util/alert";
	}
}
