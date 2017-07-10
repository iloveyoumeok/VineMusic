package dao;

import entity.Member;

public interface LoginDao {
	public Member checkLogin(String loginID,String loginPwd);
}
