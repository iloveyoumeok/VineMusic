package daoimp;

import java.sql.*;

import dao.BaseDao;
import dao.LoginDao;
import entity.Member;

public class LoginDaoImp extends BaseDao implements LoginDao {

	Connection con;
	Statement stm;
	PreparedStatement pstm;
	ResultSet rs;

	public Member checkLogin(String loginID, String loginPwd) {
		Member member = null;
		con = super.DbConnection();

		// 2������ִ�ж���
		String sql = "select * from member where userName=?  and pwd=?";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, loginID);
			pstm.setString(2, loginPwd);

			// 3��ִ�в�����ֵ
			rs = pstm.executeQuery();

			// 4��������
			if (rs.next()) {
				member = new Member(rs.getString(2), rs.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			super.close();
		}

		return member;
	}

}
