package admin.dto;

public class Place {

	private int pla_list_no;
	private String com_id;
	private int pla_no;
	private String pla_name;
	private String pla_address;
	private String pla_phone;
	private String pla_money;
	private String pla_time;
	private String pla_statue;
	private int pla_start;
	private int pla_end;
	private int pla_people;
	
	public int getPla_list_no() {
		return pla_list_no;
	}
	public void setPla_list_no(int pla_list_no) {
		this.pla_list_no = pla_list_no;
	}
	
	
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public int getPla_no() {
		return pla_no;
	}
	public void setPla_no(int pla_no) {
		this.pla_no = pla_no;
	}
	public String getPla_name() {
		return pla_name;
	}
	public void setPla_name(String pla_name) {
		this.pla_name = pla_name;
	}
	public String getPla_address() {
		return pla_address;
	}
	public void setPla_address(String pla_address) {
		this.pla_address = pla_address;
	}
	public String getPla_phone() {
		return pla_phone;
	}
	public void setPla_phone(String pla_phone) {
		this.pla_phone = pla_phone;
	}
	public String getPla_money() {
		return pla_money;
	}
	public void setPla_money(String pla_money) {
		this.pla_money = pla_money;
	}
	public String getPla_time() {
		return pla_time;
	}
	public void setPla_time(String pla_time) {
		this.pla_time = pla_time;
	}
	public String getPla_statue() {
		return pla_statue;
	}
	public void setPla_statue(String pla_statue) {
		this.pla_statue = pla_statue;
	}
	public int getPla_start() {
		return pla_start;
	}
	public void setPla_start(int pla_start) {
		this.pla_start = pla_start;
	}
	public int getPla_end() {
		return pla_end;
	}
	public void setPla_end(int pla_end) {
		this.pla_end = pla_end;
	}
	public int getPla_people() {
		return pla_people;
	}
	public void setPla_people(int pla_people) {
		this.pla_people = pla_people;
	}
	
	@Override
	public String toString() {
		return "[ com_id = "+com_id+" , pla_no = "+pla_no+" , pla_name = "+pla_name+" , pla_address = "+pla_address
				+" , pla_phone = "+pla_phone+" , pla_money = "+pla_money+" , pla_time ="+pla_time
				+" , pla_statue ="+pla_statue+" , pla_start = "+pla_start+" , pla_end = "+pla_end
				+" , pla_people = "+pla_people+" ] ";
	}
	
	
	
}
