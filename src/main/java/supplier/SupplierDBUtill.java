package supplier;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class SupplierDBUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
    // Validate user credentials
	public static boolean validate(String UserName, String Password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplier where UserName='"+UserName+"' and Password='"+Password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
    // Get supplier details by username

	public static List<Supplier> getSupplier(String userName) {
		
		ArrayList<Supplier> supplier = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplier where UserName='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
                // Extracting supplier details from the result set

				int ID = rs.getInt(1);
				String UserType=rs.getString(2);
				String First_Name = rs.getString(3);
				String Last_Name = rs.getString(4);
				String UserName = rs.getString(5);
				String DOB = rs.getString(6);
				String City = rs.getString(7);
				String PhoneNumber = rs.getString(8);
				String Email = rs.getString(9);
				String Password = rs.getString(10);

				
                // Creating a Supplier object and adding it to the list

				Supplier sup = new Supplier(ID,UserType,First_Name,Last_Name,UserName,DOB,City,PhoneNumber,Email,Password);
				supplier.add(sup);
			}
			
		} catch (Exception e) {
			
		}
		
		return supplier;	
	}
	
    // Insert a new supplier

    
    public static boolean insertSupplier(String UserType,String First_Name,String Last_Name,String UserName,String DOB,String City,String PhoneNumber, String Email, String Password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
            // SQL query to insert a new supplier

    		String sql = "INSERT INTO Supplier VALUES (0, '" + UserType + "', '" + First_Name + "', '" + Last_Name + "', '" + UserName + "', '" + DOB + "', '" + City + "', '" + PhoneNumber + "', '" + Email + "', '" + Password + "')";
    		if(Password.length()>4) {
    			int rs = stmt.executeUpdate(sql);
    		
    			if(rs > 0) {
    				isSuccess = true;
    			} else 
    			{
    				isSuccess = false;
    			}
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    // Update supplier details

    public static boolean updateSupplier(String ID,String UserType,String First_Name,String Last_Name,String UserName,String DOB,String City,String PhoneNumber, String Email, String Password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
            // SQL query to update supplier details

    		String sql = "update Supplier set First_Name='" + First_Name + "', Last_Name='" + Last_Name + "', UserName='" + UserName + "', DOB='" + DOB + "', City='" + City + "', PhoneNumber='" + PhoneNumber + "', Email='" + Email + "', Password='" + Password + "' where ID='" + ID + "'";
    				
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    // Get supplier details by ID

    public static List<Supplier> getSupplierDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Supplier> sup = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
            // SQL query to select supplier details by ID

    		String sql = "select * from Supplier where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			
                // Extracting supplier details from the result set

    			int ID = rs.getInt(1);
    			String UserType=rs.getString(2);
				String First_Name = rs.getString(3);
				String Last_Name = rs.getString(4);
				String UserName = rs.getString(5);
				String DOB = rs.getString(6);
				String City = rs.getString(7);
				String PhoneNumber = rs.getString(8);
				String Email = rs.getString(9);
				String Password = rs.getString(10);

                // Creating a Supplier object and adding it to the list

    			Supplier c = new Supplier(ID,UserType,First_Name,Last_Name,UserName,DOB,City,PhoneNumber,Email,Password);
    			sup.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return sup;	
    }
    
    // Delete a supplier by ID

    
    public static boolean deleteSupplier(String ID) {
    	
    	int convID = Integer.parseInt(ID);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		
            // SQL query to delete a supplier by ID

    		String sql = "delete from Supplier where ID='"+convID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
}
    