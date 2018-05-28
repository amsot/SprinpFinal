package admin.dto;

import java.util.Date;

public class Board {
	private int board_list_no;
	private int board_no;
	private String board_writer;
	private String board_content;
	private Date board_regdate;
	private String board_title;
	private String board_file;
	private char board_type;
	public int getBoard_list_no() {
		return board_list_no;
	}
	public void setBoard_list_no(int board_list_no) {
		this.board_list_no = board_list_no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public Date getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_file() {
		return board_file;
	}
	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}
	public char getBoard_type() {
		return board_type;
	}
	public void setBoard_type(char board_type) {
		this.board_type = board_type;
	}
	
	@Override
	public String toString() {
		return "[ board_no = "+board_no+" , board_writer = "+board_writer+" , board_title = "+board_title 
				+" , board_content = "+board_content+" , board_regdate = "+board_regdate
				+" , board_file = "+board_file+" , board_type = "+board_type+"]";
	}
	
	
	

}
