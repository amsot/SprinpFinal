package mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.service.CommentsService;

@Controller
public class CommentsController {

	@Autowired CommentsService service;
	
	@RequestMapping(value="/comment/list.do", produces="application/json", method=RequestMethod.GET)
	@ResponseBody
	private List commentList(Board board, Model model) {
		return service.getCommentList();
	}
	
	
	@RequestMapping(value="/comment/write.do", method=RequestMethod.POST)
	@ResponseBody
	private int commentUpdateProc(Comments comments) {
		return service.commentsWrite(comments);
	}
	
	@RequestMapping(value="/comment/delete.do", method=RequestMethod.GET)
	@ResponseBody
	private void commentDelete(Comments comments) {
		service.commentsDelete(comments);
	}
}
