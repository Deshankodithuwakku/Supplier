package supplier;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeleteSupplierServlet")
public class DeleteSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieving Supplier ID from the request

		String ID = request.getParameter("supID");
		boolean isTrue;
		
        // Deleting the supplier and getting the result

		isTrue = SupplierDBUtill.deleteSupplier(ID);
		
        // Redirecting based on the deletion result

		if (isTrue == true) {
			
			// If successful, displaying an alert and redirecting to Register.jsp
				String alertMessage = "Account Delete Successful";
				response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Register.jsp';</script>");
            
		}
		else {
			
            // If deletion fails, retrieve supplier details and forward to the account page

			
			List<Supplier> supDetails = SupplierDBUtill.getSupplierDetails(ID);
			request.setAttribute("supDetails", supDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("SupplierAccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}


