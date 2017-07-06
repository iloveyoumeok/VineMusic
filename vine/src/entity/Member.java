package entity;

import java.sql.Date;

public class Member {
	private int id;
	private String username;
	private String pwd;
	private String sex;
	private String mail;
	private Date regdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public Member(int id, String username, String pwd, String sex, String mail, Date regdate) {
		super();
		this.id = id;
		this.username = username;
		this.pwd = pwd;
		this.sex = sex;
		this.mail = mail;
		this.regdate = regdate;
	}

}
