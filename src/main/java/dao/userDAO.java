package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;
import utils.JDBCUtil;

public class userDAO {
	public static final Connection conn = JDBCUtil.getConnection();
	public User login(String username, String pass) {
		User user = null;
		try {
			String sql = "Select * from user where username = ? and password = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, username);
			pr.setString(2, pass);
			ResultSet rs = pr.executeQuery();
			if(rs.next()) {
				int id = rs.getInt("id");
				String uname = rs.getString("username");
				String password = rs.getString("password");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				user = new User(id,username, password, address, phone);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public boolean addUser(User user) {
		boolean flag = false;
		try {
			String sql = "Insert into user(username, password, address, phone) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getPhone());
			int check = ps.executeUpdate();
			if(check > 0) {
				flag = true;
			}else {
				flag = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
