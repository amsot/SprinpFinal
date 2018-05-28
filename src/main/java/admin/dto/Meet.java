package admin.dto;

import java.util.Date;

public class Meet {
	private int meeting_list_no;
	private int meeting_no;
	private Date date_start;
	private Date date_end;
	private String reservation_location;
	private int personnel;
	private int group_no;
	private String group_id;
	private String status;
	
	public int getMeeting_list_no() {
		return meeting_list_no;
	}
	public void setMeeting_list_no(int meeting_list_no) {
		this.meeting_list_no = meeting_list_no;
	}
	public int getMeeting_no() {
		return meeting_no;
	}
	public void setMeeting_no(int meeting_no) {
		this.meeting_no = meeting_no;
	}
	public Date getDate_start() {
		return date_start;
	}
	public void setDate_start(Date date_start) {
		this.date_start = date_start;
	}
	public Date getDate_end() {
		return date_end;
	}
	public void setDate_end(Date date_end) {
		this.date_end = date_end;
	}
	public String getReservation_location() {
		return reservation_location;
	}
	public void setReservation_location(String reservation_location) {
		this.reservation_location = reservation_location;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public int getGroup_no() {
		return group_no;
	}
	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return " [ meeting_list_no"+meeting_list_no+
				"meeting_no = "+meeting_no+" , date_start = "+date_start
				+ " , date_end = "+date_end+" , reservation_location = "+reservation_location
				+ " , personnel = "+personnel+" , group_no = "+group_no+"group_id"+group_id
				+ " , status = "+status+" ] ";
	}
	
}
