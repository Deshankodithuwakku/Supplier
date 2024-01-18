package supplier;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    // Handling POST requests for updating supplier information

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        // Retrieving updated supplier information from the form

		String ID = request.getParameter("supID");
		String UserType=request.getParameter("UserType");
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		String UserName = request.getParameter("UserName");
		String DOB = request.getParameter("DOB");
		String City = request.getParameter("City");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");
		
        // Variable to store the success/failure of the database update

		boolean isTrue;
		
        // Calling the database utility method to update supplier information

		isTrue = SupplierDBUtill.updateSupplier(ID,UserType, First_Name, Last_Name, UserName, DOB, City,PhoneNumber,Email,Password);
		
		if(isTrue == true) {
			
	        // Forwarding to SupplierAccount.jsp with updated or existing supplier details

			List<Supplier> supDetails = SupplierDBUtill.getSupplierDetails(ID);
			request.setAttribute("supDetails", supDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SupplierAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Supplier> supDetails = SupplierDBUtill.getSupplierDetails(ID);
			request.setAttribute("supDetails", supDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SupplierAccount.jsp");
			dis.forward(request, response);
		}
	}
}