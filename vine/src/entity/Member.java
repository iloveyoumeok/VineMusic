package entity;

import java.sql.Date;

public class Member{

	private String userName;
	private String pwd;
	private String sex;
	private String mail;
	private Date regdate;

	public String getuserName() {
		return userName;
	}
	public void setuserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Member(String userName, String pwd, String sex, String mail, Date regdate) {
		super();
		this.userName = userName;
		this.pwd = pwd;
		this.sex = sex;
		this.mail = mail;
		this.regdate = regdate;
	}
	public Member(String userName,String pwd){
		this.userName=userName;
		this.pwd=pwd;
	}
	public Member() {
		// TODO Auto-generated constructor stub
	}


}
