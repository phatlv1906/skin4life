package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.order;
import utils.JDBCUtil;

public class orderDao {
	public static final Connection conn = JDBCUtil.getConnection();
	public boolean saveOrder(order oder) {
		boolean flag = false;
		try {
			String sql = "Insert into `order`(u_id, doctor_id, date) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, oder.getUid());
			ps.setInt(2, oder.getDid());
			ps.setString(3, oder.getDate());
			int check = ps.executeUpdate();
			if(check > 0) {
				flag = true;
			}else {
				flag = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
