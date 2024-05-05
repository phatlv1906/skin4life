package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.jdbc.Driver;


public class JDBCUtil {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/skin4life";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
//	private static final String JDBC_URL = "jdbc:mysql://skin4lifeserver.mysql.database.azure.com:3306/skin4life?useSSL=true&requireSSL=false";
//    private static final String USERNAME = "skin4life_root";
//    private static final String PASSWORD = "19062002Lvp#";
    // Phương thức để tạo kết nối
    public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
