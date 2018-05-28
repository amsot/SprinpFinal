package admin.dto;

import java.util.Date;

public class Company {
	private int com_list_no;
	private int com_no;
	private String com_id;
	private String com_pw;
	private String com_name;
	private String com_phone;
	private String com_email;
	private int com_status; //승인 상태
	private int com_block; //제재상태
	
	public int getCom_status() {
		return com_status;
	}



	public void setCom_status(int com_status) {
		this.com_status = com_status;
	}



	public int getCom_list_no() {
		return com_list_no;
	}



	public void setCom_list_no(int com_list_no) {
		this.com_list_no = com_list_no;
	}



	public int getCom_no() {
		return com_no;
	}



	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}



	public String getCom_id() {
		return com_id;
	}



	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}



	public String getCom_pw() {
		return com_pw;
	}



	public void setCom_pw(String com_pw) {
		this.com_pw = com_pw;
	}
	
	



	public String getCom_name() {
		return com_name;
	}



	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}



	public String getCom_phone() {
		return com_phone;
	}



	public void setCom_phone(String com_phone) {
		this.com_phone = com_phone;
	}



	public String getCom_email() {
		return com_email;
	}



	public void setCom_email(String com_email) {
		this.com_email = com_email;
	}
	
	



	public int getCom_block() {
		return com_block;
	}



	public void setCom_block(int com_block) {
		this.com_block = com_block;
	}



	@Override
	public String toString() {
		return " [ com_no = "+com_no+" , com_name = "+com_name
				+" , com_id = "+com_id
				+" , com_pw = "+com_pw
				+" , com_phone = "+com_phone
				+" , com_email = "+com_email
				+" , com_status = "+com_status
				+" , com_block = "+com_block
				+ " ] ";
	}
	
}
