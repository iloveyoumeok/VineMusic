package daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.BaseDao;
import dao.IssueDao;
import entity.Issue;

public class IssueDaoImp extends BaseDao implements IssueDao {

	@Override
	public Issue showIssue(String id) {
		Issue isu=new Issue();
		Connection con;
		PreparedStatement pstm;
		ResultSet rs;
		con = super.DbConnection();
		String sql="select * from songer where pubDate=?";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1,id);
			rs = pstm.executeQuery();
			if(rs.next()){
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
	}

}
