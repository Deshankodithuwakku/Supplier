package supplier;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
    // JDBC connection details

	private static String url = "jdbc:mysql://localhost:3306/stock";
	private static String userName = "root";
	private static String password = "123456";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
            // Attempt to establish a database connection

			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}
