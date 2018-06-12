package mvc.service;

import java.util.List;


import mvc.dto.Comments;

public interface CommentsService {
	
	public List getCommentList();

	public int commentsWrite(Comments comments);

	public void commentsDelete(Comments comments);

}
