<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type="text/css">
		body {
			font-family: 'Hind SemiBold', sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}

		.container {
			background-color: #fff;
			padding: 20px;
			border-radius: 8px;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			width: 300px;
			text-align: center;
		}

		h1 {
			color: #333;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		input {
			width: 100%;
			padding: 10px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 1px solid #ccc;
			border-radius: 4px;
		}

		input[type="submit"] {
			background-color: #4caf50;
			color: white;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #45a049;
		}
	</style>
	
</head>
<body>
		<div class="container">

	<h1>Login Page</h1>
	
	<form action="login" method="post">
		User Name <input type="text" name="UserName" placeholder="Enter your username"><br>
		Password <input type="password" name="Password" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value="login">
	</form>
	</div>

</body>
</html>