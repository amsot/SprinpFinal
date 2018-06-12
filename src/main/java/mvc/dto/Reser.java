package mvc.dto;

import java.util.Date;

public class Reser {


private int pla_no;
private String u_id;
private int personnel;
private int rstart;
private int rend;
private Date reserDate;

public Date getReserDate() {
	return reserDate;
}
public void setReserDate(Date reserDate) {
	this.reserDate = reserDate;
}
public int getPla_no() {
	return pla_no;
}
public void setPla_no(int pla_no) {
	this.pla_no = pla_no;
}
public String getU_id() {
	return u_id;
}
public void setU_id(String u_id) {
	this.u_id = u_id;
}
public int getPersonnel() {
	return personnel;
}
public void setPersonnel(int personnel) {
	this.personnel = personnel;
}
public int getRstart() {
	return rstart;
}
public void setRstart(int rstart) {
	this.rstart = rstart;
}
public int getRend() {
	return rend;
}
public void setRend(int rend) {
	this.rend = rend;
}

@Override
public String toString() {
	return "RESER=[pla_no="+pla_no+",u_id="+u_id+",personnel="+personnel+",rstart="+rstart+","
			+ "rend="+rend+"]";
}

}
