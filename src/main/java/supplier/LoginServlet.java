package supplier;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        // Retrieve username and password from the login form

		String userName = request.getParameter("UserName");
		String password = request.getParameter("Password");
		boolean isTrue;
		
        // Validate the entered username and password using the SupplierDBUtill class

		isTrue = SupplierDBUtill.validate(userName, password);
		
        // If the validation is successful, forward the request to the SupplierAccount.jsp

		if (isTrue == true) {
			
            // Retrieve supplier details based on the username

				List<Supplier> supDetails = SupplierDBUtill.getSupplier(userName);
				request.setAttribute("supDetails", supDetails);
				
	            // Forward the request to the SupplierAccount.jsp page

				RequestDispatcher dis = request.getRequestDispatcher("SupplierAccount.jsp");
				dis.forward(request, response);
			
			
	       // If validation fails, display an alert and redirect back to the login page
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
	}

}
  