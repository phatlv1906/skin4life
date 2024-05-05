package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.doctor;
import utils.JDBCUtil;

public class doctorDao {
	public static final Connection conn = JDBCUtil.getConnection();
	
	public List<doctor>selectAllDoctor(){
		List<doctor> listDoc = new ArrayList<doctor>();
		try {
			String sql = "Select * from doctor";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String hospital = rs.getString("hospital");
				int exp = rs.getInt("exp");
				String special = rs.getString("specialist");
				String image = rs.getString("image");
				String des = rs.getString("des");
				doctor newDoc = new doctor(id, name, hospital, special, exp, des, image);
				listDoc.add(newDoc);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listDoc;
	}
	public doctor selectDoctorById(int id) {
		doctor getDoc = null;
		try {
			String sql = "Select * from doctor where id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				String name = rs.getString("name");
				String hospital = rs.getString("hospital");
				int exp = rs.getInt("exp");
				String special = rs.getString("specialist");
				String image = rs.getString("image");
				String des = rs.getString("des");
				getDoc = new doctor(id, name, hospital, special, exp, des, image);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return getDoc;
	}
}
