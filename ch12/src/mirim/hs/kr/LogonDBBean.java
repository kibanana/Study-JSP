package mirim.hs.kr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LogonDBBean {
	
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	private Connection getConnection() throws Exception {
		String url = "jdbc:mysql://localhost:3309/mirim";
		String user = "test";
		String pwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, user, pwd);
		return conn;
	}
	
	public void insertMember(LogonDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstat = null;
		
		try {
			conn = getConnection();
			String sql = "INSERT INTO MEMBER VALUES(?,?,?)";
			pstat.setString(1, member.getId());
			pstat.setString(2, member.getPwd());
			pstat.setString(3, member.getName());
			pstat.executeUpdate();
			
		} catch(Exception e) {	
			e.printStackTrace();
		} finally {
			if(pstat != null) { try { pstat.close(); } catch(Exception e) { } }
			if(conn != null) { try { conn.close(); } catch(Exception e) { } }
		}
	}
	
	public int userCheck(String id, String pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		int x = -1;
		String dbpass = "";
		
		try {
			conn = getConnection();
			String sql = "SELECT pwd FROM member WHERE id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				dbpass = rs.getString("pwd");
				if(dbpass.equals(pwd)) {
					x = 1;
				} else {
					x = 0;
				}
			} else {
				x = -1;
			}
			
		} catch(Exception e) {	
			e.printStackTrace();
		} finally {
			if(rs != null) { try { rs.close(); } catch(Exception e) { } }
			if(pstat != null) { try { pstat.close(); } catch(Exception e) { } }
			if(conn != null) { try { conn.close(); } catch(Exception e) { } }
		}
		
		return x;
	}
}