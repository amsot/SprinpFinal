package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Com_userble;
import mvc.dto.Groups;
import mvc.dto.Meeting_guest;
import mvc.dto.Meeting_reservation;

@Repository
public interface MeetingDAO {
	
	public List getMeetingList(Groups group);
	
	public List getMeetingGuest(Meeting_reservation meeting);
	
	public int isGuest(Meeting_guest guest);
	
	public Meeting_reservation getCurrentMeeting(Groups group);
	
	public Meeting_reservation getMeetingInfo(Meeting_reservation meeting);
	
	public List getPlaceList();
	
	public void insertMeeting(Meeting_reservation meeting);
	
	public void insertUserble(Com_userble userble);
	
	public void updateMeeting(Meeting_reservation meeting);
	
	public void deleteMeeting(Meeting_reservation meeting);
	
	public void insertMeetingGuest(Meeting_guest guest);
}
