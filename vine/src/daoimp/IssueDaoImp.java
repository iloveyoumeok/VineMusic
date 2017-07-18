package daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import dao.BaseDao;
import dao.IssueDao;
import entity.Issue;

public class IssueDaoImp extends BaseDao implements IssueDao {

	@Override
	public List<Issue> showIssue(String id) {
		List<Issue> list=new ArrayList<Issue>();
		Connection con;
		PreparedStatement pstm;
		ResultSet rs;
		con = super.DbConnection();
		String sql="select * from songer where pubDate=?";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1,id);
			rs = pstm.executeQuery();
			while(rs.next()){
				Issue is=new Issue(rs.getString(2), rs.getString(3),rs.getString(4));
				list.add(is);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return list;
	}

}
