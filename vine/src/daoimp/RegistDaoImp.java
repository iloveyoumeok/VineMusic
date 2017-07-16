package daoimp;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.BaseDao;
import dao.RegistDao;
import entity.Member;

public class RegistDaoImp extends BaseDao implements RegistDao {

	@Override
	public int registMember(Member member) {
		Connection con;
		PreparedStatement pstm;
		int rs=0;
		con = super.DbConnection();
		String sql="insert into member(userName,pwd,sex,mail,regdate)value(?,?,?,?,?);";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1,member.getuserName() );
			pstm.setString(2, member.getPwd());
			pstm.setString(3, member.getSex());
			pstm.setString(4, member.getMail());
			pstm.setDate(5, member.getRegdate());
			rs=pstm.executeUpdate();
			con.close();
			pstm.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

}
