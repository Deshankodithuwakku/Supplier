package supplier;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    // Handling POST requests

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        // Retrieving user input from the registration form

		String UserType=request.getParameter("UserType");
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		String UserName = request.getParameter("UserName");
		String DOB = request.getParameter("DOB");
		String City = request.getParameter("City");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");

        // Variable to store the success/failure of the database insertion

		
		boolean isTrue;
		
        // Calling the database utility method to insert supplier information

		isTrue = SupplierDBUtill.insertSupplier(UserType,First_Name,Last_Name,UserName,DOB,City,PhoneNumber,Email,Password);
		
        // Redirecting based on the success/failure of the database operation

		if(isTrue == true) {
			
            // If successful, forward to login.jsp

			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		} else {
			
            // If unsuccessful, forward to unsuccess.jsp

			RequestDispatcher dis2 = request.getRequestDispatcher("Register.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
