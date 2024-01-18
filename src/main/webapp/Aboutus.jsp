<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>About Us</title>
<style type="text/css">body{
	background-image:url("background.jpg");
	background-size:cover;
	background-repeat:no-repeat;
	background-attachment:fixed;
  margin: 0;
  padding: 0;
  margin-top: 120px;

}

.t2{

    color: rgb(235, 247, 7);

}
  h2 {
  font-family: "Comic Sans MS", cursive;
  width: 900px;
}

  #btn {
    background-color: rgb(5, 242, 24);
    color: black;
    font-size: 16px;
    padding: 8px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  #btn:hover {
    background-color: white;

  }
  .about{
	background:#00000091;
	height:70%;
	width:60%;
	padding:10px 5px 5px 5px;
	border-radius:20px;	
	opacity:95%;
	}

}</style>   
	
    <script >function myFunction(){
    	//get the Checkbox
    	var checkbox=document.getElementById("myCheck");
    	//get the output Text
    	var text=document.getElementById("text");
    	//if the checkbox checked,display output
    	if(checkbox.checked==true){
    		text.style.display="none";
    	}else {
    		text.style.display="block";
    	}
    	
    }
    function seemore() {
        var element = document.getElementById("seemore");
        element.style.color = "rgb(235, 247, 7)";
        element.innerHTML = " Whether you're a startup or an enterprise, we tailor our services to your needs. Simplify your inventory processes and empower your business for growth with Stock Management System.";
        element.style.fontFamily = "'Comic Sans MS', cursive";
        element.style.fontSize = "20px"; 
    }

</script>
	
  </head>
  <body>

    <center>
		<div class="about">
	  <h1 style="font-size: 40px; color: white;text-align:center;font-size:45px;text-shadow: 1px 1px 2px blue, 0 0 25px black, 0 0 5px blue"" class="t2">WELCOME TO AboutUs!</h1>
  </div>
        <h2 class="t2">Welcome to Stock Management System, your go-to solution for streamlined online stock management. Our user-friendly system is crafted for efficiency, offering seamless integration and control. </h2>
      <span id="seemore"></span>
      <button id="btn" onclick="seemore()">See More</button>
    </center>

  </body>
</html>
