<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update My Account Details</title>
	<style type="text/css">
	body
	 {background-color: #D6EAF8;
	 text-align: left;
	 margin: 0;
     padding: 0;
	  }
	  h1 {
  text-align: center;
  font-size: 55px;
  color: #3498DB;
  font-weight: bold;
  margin: 50px 0 50px 0;
}
	  
	  
	  	 button {
  background-color: #3498DB;
  color: white;
  border: 0;
  font-size: 18px;
  font-weight: bold;
  padding: 8px 15px;
  border-radius: 5px;
  margin: 20px 0 0 0;
  text-align: center;
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}


		form {
            max-width: 400px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

       label {
  font-weight: bold;
  font-size: 25px;
}

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="checkbox"] {
            margin-left: 5px;
        }

        input[type="submit"] {
            background: #333;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background: #555;
        }
	</style>
</head>
<body>

<h1>Update My Details</h1>
	<%
	// Retrieving parameters from the request

		String ID = request.getParameter("ID");
	    String UserType=request.getParameter("UserType");
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		String UserName = request.getParameter("UserName");
		String DOB = request.getParameter("DOB");
		String City = request.getParameter("City");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");
	%>
	
		<!-- Form for updating account details -->
	
	<form action="update" method="post">

	
            <label for="supID">Supplier ID</label>
		<input type="text" name="supID" value="<%= ID %>" readonly><br><br>
	
	
		<label for="UserType">Type</label>
			<input type="text" name="UserType" value="<%= UserType %>" readonly><br><br>
		
			<label for="First_Name">First Name</label>
			<input type="text" name="First_Name" value="<%= First_Name %>"><br><br>
		
			<label for="Last_Name">Last Name</label>
			<input type="text" name="Last_Name" value="<%= Last_Name %>"><br><br>
		
		<label for="UserName">User Name</label>
		<input type="text" name="UserName" value="<%= UserName %>"><br><br>
	
			<label for="DOB">DOB</label>
			<input type="date" name="DOB" value="<%= DOB %>"><br><br>
		
		
			<label for="City">City</label>
			<input type="text" name="City" value="<%= City %>"><br><br>
		
	
		<label for="PhoneNumber">Phone number</label>
		<input type="tel" name="PhoneNumber" value="<%= PhoneNumber %>"><br><br>
		
		<label for="email">Email</label>
		<input type="email" name="Email" value="<%= Email %>"><br><br>

		<label for="password">password</label>
		<input type="password" name="Password" value="<%= Password %>"><br><br>
	
	<center>
	<br>
      <button type="submit">Update My Details</button>
    </center>
	</form>

</body>
</html>