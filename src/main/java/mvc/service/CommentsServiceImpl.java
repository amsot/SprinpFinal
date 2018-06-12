package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.BoardDAO;
import mvc.dto.Comments;

@Service
public class CommentsServiceImpl implements CommentsService{
	
	@Autowired BoardDAO dao;
	
	@Override
	public List getCommentList() {
		return dao.commentList();
	}

	@Override
	public int commentsWrite(Comments comments) {
		return dao.commentsWrite(comments);
	}

	@Override
	public void commentsDelete(Comments comments) {
		dao.commentsDelete(comments);
	}


}
