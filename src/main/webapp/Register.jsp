<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
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


    </style>
</head>
<body>
    <h1>Registration</h1>
    
        <!-- Actual registration form with input fields -->
    
    <form id="registrationForm" action="register" method="post">
    
          <label for="UserType">Type:</label>
        <select id="UserType" name="UserType" required>
            <option value="Customer">Customer</option>
            <option value="Supplier">Supplier</option>
        </select>
        
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="First_Name" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="Last_Name" required>

        <label for="userName">User Name:</label>
        <input type="text" id="UserName" name="UserName" required>
        
        <label for="birthdate">Date of Birth:</label>
        <input type="date" id="dob" name="DOB" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="City" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="tel" id="PhoneNumber" name="PhoneNumber" required>

        <label for="email">Email:</label>
        <input type="email" id="Email" name="Email" required>

        <label for="password">Password:</label>
        <input type="password" id="Password" name="Password"  required>


     
    <br>

        <input type="checkbox" id="privacyPolicy" required>
        <label for="privacyPolicy">I accept the Privacy Policy</label>

        <br>

        <input type="checkbox" id="terms" required>
        <label for="terms">I accept the Terms and Conditions</label>

        <br>

        <button type="submit" onclick="validateForm()">Register</button>
    </form>
    </center>

    <script>
        function validateForm() {
            var privacyPolicy = document.getElementById('privacyPolicy').checked;
            var terms = document.getElementById('terms').checked;
            var password=document.forms["registrationForm"]["Password"].value;

            if (!privacyPolicy || !terms) {
                alert('Please accept the Privacy Policy and Terms.');
                return false; 
            }
            if (password.length < 5) {
                alert("Password must be at least 5 characters long");
                return false;
            }
            <!-- JavaScript to show an alert on form submission -->
            document.getElementById('registrationForm').addEventListener('submit', function(event) {
                alert("Registerd");
            });
            

            return true; 
        }
  

	

   



    
    </script>
</body>
</html>