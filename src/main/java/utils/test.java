package utils;

import java.sql.Connection;
import java.util.List;

import dao.doctorDao;
import dao.userDAO;
import model.User;
import model.doctor;

public class test {
	public static void main(String[] args) {
//		userDAO udao = new userDAO();
//		User user = new User("phat123", "111", "HCM City", "0123456789");
//		boolean a = udao.addUser(user);
//		System.out.println(a);
//		doctorDao docDai = new doctorDao();
//		doctor getDoc = docDai.selectDoctorById(1);
//		System.out.println(getDoc.toString());
		Connection conn = JDBCUtil.getConnection();
		System.out.println(conn);
	}
}
