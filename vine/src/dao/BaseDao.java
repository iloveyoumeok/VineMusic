package dao;

import java.sql.*;

public class BaseDao {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://172.17.5.246:3306/music";
	private static final String loginUsername="root";
	private static final String loginUserpwd="123456";
	private Connection conn=null;
	public Connection DbConnection(){
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DriverProblem");
		}
		try {
			this.conn=DriverManager.getConnection(url, loginUsername, loginUserpwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ConnectionProblem");
		}
		return conn;
	}

	

}
