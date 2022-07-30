package MyConnection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Run {
	public static int register(Registration reg) {
		int status =0;
		try {
			Connection con = MyCon.getConnection();
			long millis = System.currentTimeMillis();
			Date date = new Date(millis);
			
			PreparedStatement ps = con.prepareStatement("insert into user(email_id,password,name,city,login_date)values(?,?,?,?,?)");
			ps.setString(1, reg.getEmail_id());
			ps.setString(2, reg.getPassword());
			ps.setString(3, reg.getName());
			ps.setString(4, reg.getCity());
			ps.setDate(5, date);
			
			status = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static boolean login(login log) {
		boolean status = false;
		try {
			Connection con = MyCon.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from user where email_id=? and password=?");
			ps.setString(1, log.getEmail_id());
			ps.setString(2, log.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}