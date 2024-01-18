<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	    <style type="text/css">
	    * {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
        body {background-color: #D6EAF8;
	 text-align: left;
	 margin: 0;
     padding: 0;}
h1 {
  text-align: center;
  font-size: 55px;
  color: #3498DB;
  font-weight: bold;
  margin: 50px 0 50px 0;
}
input,
select,
option {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  margin: 5px 0 10px 0;
}	  
button {
  background-color: rgb(255, 0, 0);
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
.btn {
  text-align: center;
}

        .right-half {
  background-color: white;
  width: 550px;
  padding: 30px;
  border-radius: 10px;
  margin: 0 0 80px 0;
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.container {
  margin-left: 490px;
}
       label {
  font-weight: bold;
  font-size: 25px;
}
    </style>
</head>
<body>

    <!-- JSP Scriptlet to retrieve form parameters -->


	<%
	String ID = request.getParameter("ID");
	String UserType = request.getParameter("UserType");
	String First_Name = request.getParameter("First_Name");
	String Last_Name = request.getParameter("Last_Name");
	String UserName = request.getParameter("UserName");
	String DOB = request.getParameter("DOB");
	String City = request.getParameter("City");
	String PhoneNumber = request.getParameter("PhoneNumber");
	String Email = request.getParameter("Email");
	String Password = request.getParameter("Password");
	%>
	
	    <!-- Form for Supplier Account Deletion -->
	

	<h1>My Account Delete</h1>

<div class="container">
    <div class="right-half">
	<form action="delete" method="post">
	
		
			<label >Supplier ID</label>
			<input type="text" name="supID" value="<%= ID %>" readonly><br><br>

			<label >Type</label>
			<input type="text" name="UserType" value="<%= UserType %>" readonly><br><br>
		
			<label>First Name</label>
			<input type="text" name="First_Name" value="<%= First_Name %>"readonly><br><br>
		
			<label >Last Name</label>
			<input type="text" name="Last_Name" value="<%= Last_Name %>"readonly><br><br>
			
		<label >User Name</label>
		<input type="text" name="UserName" value="<%= UserName %>"readonly><br><br>
		
			<label >DOB</label>
			<input type="date" name="DOB" value="<%= DOB %>"readonly><br><br>
		
			<label>City</label>
			<input type="text" name="City" value="<%= City %>"readonly><br><br>
		
     	<label >Phone number</label>
		<input type="tel" name="PhoneNumber" value="<%= PhoneNumber %>"readonly><br><br>
		
		<label >Email</label>
		<input type="email" name="Email" value="<%= Email %>"readonly><br><br>
		         
		 <label >Password</label>
		<input type="password" name="Password" value="<%= Password %>"readonly><br><br>
	
	        <!-- Button to submit account deletion -->
	
	
<div class="btn">
      <button type="submit">Delete My Account</button>
    </div>	
    </form>
    </div>
    </div>
    

</body>
</html>