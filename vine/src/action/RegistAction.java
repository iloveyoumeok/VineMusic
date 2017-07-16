package action;


import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;



import com.opensymphony.xwork2.*;

import daoimp.RegistDaoImp;
import entity.Member;

public class RegistAction extends ActionSupport{
	private String username;
	private String password;
	private String sex;
	private String email;
	private Date regdate;
	public String execute(){
		Member member=new Member();
		int i;
		SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd HH:mm");
		Date now =new Date();
		java.sql.Date sqdate=new java.sql.Date(now.getTime());
		member.setuserName(getUsername());
		member.setPwd(getPassword());
		member.setSex(getSex());
		member.setMail(getEmail());
		member.setRegdate(sqdate);
		RegistDaoImp rdi = new RegistDaoImp();
		i=rdi.registMember(member);
//暂未实现弹出窗口


		if(i==0){
			return "error";
		}
		else{
			return "success";
		}
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}



}
