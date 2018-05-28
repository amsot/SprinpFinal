package admin.dto;

import java.util.Date;

public class User {
	private int u_list_no;
	private int u_no;
    private String u_id;
    private String u_pw;
    private String u_name;
    private String u_nick;
    private Date u_birthdate;
    private String u_phone;
    private String u_address;
    private String u_email;
    private String u_sex;
    private int u_grade;
    private String u_interests;
    private Date u_regdate;
    private int group_no;
    private int u_black;
    
	public int getU_black() {
		return u_black;
	}
	public void setU_black(int u_black) {
		this.u_black = u_black;
	}
	public int getU_list_no() {
		return u_list_no;
	}
	public void setU_list_no(int u_list_no) {
		this.u_list_no = u_list_no;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_nick() {
		return u_nick;
	}
	public void setU_nick(String u_nick) {
		this.u_nick = u_nick;
	}
	public Date getU_birthdate() {
		return u_birthdate;
	}
	public void setU_birthdate(Date u_birthdate) {
		this.u_birthdate = u_birthdate;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public int getU_grade() {
		return u_grade;
	}
	public void setU_grade(int u_grade) {
		this.u_grade = u_grade;
	}
	public String getU_interests() {
		return u_interests;
	}
	public void setU_interests(String u_interests) {
		this.u_interests = u_interests;
	}
	public Date getU_regdate() {
		return u_regdate;
	}
	public void setU_regdate(Date u_regdate) {
		this.u_regdate = u_regdate;
	}
	public int getGroup_no() {
		return group_no;
	}
	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}  
    
    @Override
    public String toString() {
    	return "[ User u_no = "+ u_no + " , u_id = " + u_id
    			+" , u_pw = " +u_pw 
    			+" , u_name = " +u_name 
    			+" , u_nick = " +u_nick
    			+" , u_birthdate = " +u_birthdate 
    			+" , u_phone = " + u_phone 
    			+" , u_address = " + u_address 
    			+" , u_email = " +u_email 
    			+" , u_sex = " +u_sex 
    			+" , u_grade = " +u_grade 
    			+" , u_interests = " +u_interests 
    			+" , u_regdate = " +u_regdate 
    			+" , group_no = "+group_no+" ] ";
    }
}
