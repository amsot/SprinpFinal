package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;

@Repository
public interface BoardDAO {
	
	public int getBoardCount(Groups group);
	
	public List getBoardList(Groups group);
	
	public Board getBoardView(Board board);
	
	public void boardWrite(Board board);
	
	public void boardMod();
	
	public void boardDelete(Board board);
	
	public int getNoticeCount(Groups group);
	
	public List getNoticeList(Groups group);
	
	public Board getNoticeView(Groups group);
	
	public void noticeWrite(Board board);
	
	public void noticeMod();
	
	public void noticeDelete(Board board);
	
	public List getPhotoList(Groups group);
	
	public Photo getPhotoView();
	
	public void photoUpload(Photo photo);
	
	public void photoDelete(Photo photo);
	
	public void updateRecommend();
	
	public void updateHit();
	
	public List commentList();
	
	public int commentsWrite(Comments comments);
		
	public void commentsDelete(Comments comments);

	public int getPhotoCount(Groups group);
	
}
