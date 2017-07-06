package entity;

public class Admin {

	private String name;
	private String mail;
	private String pwd;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Admin(String name, String mail, String pwd) {
		super();
		this.name = name;
		this.mail = mail;
		this.pwd = pwd;
	}

}
