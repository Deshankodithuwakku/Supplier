<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Supplier Details</title>
    
    <style type="text/css">
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
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
input,
select,
option {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  margin: 5px 0 10px 0;
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
.btncen {
  text-align: center;
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
.del {
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
        
    </style>
</head>
<body>

<h1>My Details</h1>

    <!-- Displaying Supplier details in a table using JSTL forEach loop -->


        <c:forEach var="sup" items="${supDetails}">
        
              <!-- Setting variables for each supplier detail -->
        
            <c:set var="ID" value="${sup.ID}" />
            <c:set var="UserType" value="${sup.userType}" />
            <c:set var="First_Name" value="${sup.first_Name}" />
            <c:set var="Last_Name" value="${sup.last_Name}" />
            <c:set var="UserName" value="${sup.userName}" />      
            <c:set var="DOB" value="${sup.DOB}" />
            <c:set var="City" value="${sup.city}" />
            <c:set var="PhoneNumber" value="${sup.phoneNumber}" />
            <c:set var="Email" value="${sup.email}" />
            <c:set var="Password" value="${sup.password}" />

            <!-- Displaying supplier details in table rows -->
            
            	      <div class="container">
            	      <div class="right-half">
            

	 <label >Supplier ID</label>
		<input type="text" value="${sup.ID}" readonly><br><br>
	
	
		<label >Type</label>
			<input type="text" value="${sup.userType}" readonly><br><br>
		
			<label>First Name</label>
			<input type="text" value="${sup.first_Name}" readonly><br><br>
		
			<label >Last Name</label>
			<input type="text" value="${sup.last_Name}" readonly><br><br>
		
		<label >User Name</label>
		<input type="text" name="UserName" value="${sup.userName}" readonly><br><br>
	
			<label >DOB</label>
			<input type="date" value="${sup.DOB}" readonly><br><br>
		
		
			<label>City</label>
			<input type="text" value="${sup.city}" readonly><br><br>
		
	
		<label >Phone number</label>
		<input type="tel" value="${sup.phoneNumber}" readonly><br><br>
		
		<label >Email</label>
		<input type="email" value="${sup.email}" readonly><br><br>


        </c:forEach>
    

    <!-- Creating URLs for updating and deleting supplier details -->

    <c:url value="UpdateSupplier.jsp" var="supupdate">
    
    <!-- Adding parameters for update -->
    
       <c:param name="ID" value="${ID}"/>
		<c:param name="UserType" value="${UserType}"/>
		<c:param name="First_Name" value="${First_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="UserName" value="${UserName}"/>
		<c:param name="DOB" value="${DOB}"/>
		<c:param name="City" value="${City}"/>
		<c:param name="PhoneNumber" value="${PhoneNumber}"/>
		<c:param name="Email" value="${Email}"/>
		<c:param name="Password" value="${Password}"/>
    </c:url>

	 <div class="btncen">

    <a href="${supupdate}">
        <button name="update" >Update My Details</button>
    </a>
</div>
    <br>

    <c:url value="DeleteSupplier.jsp" var="supdelete">
    
            <!-- Adding parameters for delete -->
    
      <c:param name="ID" value="${ID}"/>
		<c:param name="UserType" value="${UserType}"/>
		<c:param name="First_Name" value="${First_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="UserName" value="${UserName}"/>
		<c:param name="DOB" value="${DOB}"/>
		<c:param name="City" value="${City}"/>
		<c:param name="PhoneNumber" value="${PhoneNumber}"/>
		<c:param name="Email" value="${Email}"/>
		<c:param name="Password" value="${Password}"/>
    </c:url>

	 
<div class="btncen">

    <a href="${supdelete}">
        <button name="delete" class="del">Delete My Account</button>
    </a>
 </div>
    </div>
    </div>


</body>
</html>
