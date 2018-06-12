package mvc.service;

import java.io.File;
import java.io.IOException;
import java.security.acl.Group;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
 
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mvc.dao.BoardDAO;
import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;
 
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired ServletContext context;
	@Autowired BoardDAO dao;
	
	@Override
	public int getBoardCount(Groups group) {
		return dao.getBoardCount(group);
	}

	@Override
	public List getBoardList(Groups group) {
		return dao.getBoardList(group);
	}

	@Override
	public Board getBoardView(Board board) {
		return dao.getBoardView(board);
	}

	@Override
	public void boardWrite(Board board) {
		dao.boardWrite(board);
	}

	@Override
	public void boardMod() {
		dao.boardMod();
	}

	@Override
	public void boardDelete(Board board) {
		dao.boardDelete(board);
	}
	
	@Override
	public int getNoticeCount(Groups group) {
		return dao.getNoticeCount(group);
	}

	@Override
	public List getNoticeList(Groups group) {
		return dao.getNoticeList(group);
	}

	@Override
	public Board getNoticeView(Groups group) {
		return dao.getNoticeView(group);
	}

	@Override
	public void noticeWrite(Board board) {
		dao.noticeWrite(board);
	}

	@Override
	public void noticeMod() {
		dao.noticeMod();
	}

	@Override
	public void noticeDelete(Board board) {
		dao.noticeDelete(board);
	}

	@Override
	public List getPhotoList(Groups group) {
		return dao.getPhotoList(group);
	}

	@Override
	public Photo getPhotoView() {
		return dao.getPhotoView();
	}

	@Override
	public void photoUpload(MultipartFile file, String user_nick, int group_no, HttpServletRequest request) {
		
		String uID = UUID.randomUUID().toString().split("-")[0];
				
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/upload/";
		
		String stored = file.getOriginalFilename()+"-"+uID;
				
		File dest = new File(root_path+attach_path, file.getOriginalFilename());
	
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Photo photo = new Photo();
		photo.setOriginal_name(file.getOriginalFilename());
		photo.setStored_name(stored);
		photo.setFile_size((int) file.getSize());
		photo.setGroup_no(group_no);
		photo.setUser_nick(user_nick);
		
		dao.photoUpload(photo);
	}

	@Override
	public void photoDelete(Photo photo, HttpServletRequest request) {
		String realpath = request.getSession().getServletContext().getRealPath("upload");
		
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/upload/";
		
		File file = new File(root_path+attach_path+photo.getOriginal_name());
		if(file.exists()) {
			file.delete();
		}
		dao.photoDelete(photo);
	}

	@Override
	public void updateRecommend() {
		dao.updateRecommend();
	}

	@Override
	public void updateHit() {
		dao.updateHit();
	}

	@Override
	public int getPhotoCount(Groups group) {
		return dao.getPhotoCount(group);
	}



}
