<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Spend Share</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
 ul {
    list-style-type: none;
    margin: -10px;
    padding: 0;
    overflow: hidden;
    background-color: grey;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
body{
background-color: #A8A8A8;
}

/* FORM CSS */
div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 10px;
    content: center;
    width: 50%;
    float: center; 
}
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
} 

p  {
    border: 2px solid red;
    border-radius: 4px;
}
.FormContainer{
margin: 80px 50px 0px 350px;
position: center;
content: center;
}
</style>
</head>
<body>

<ul>
  <li><a href="#contact">Spend Share</a></li>
  <li style="float:right"> <a type="button" class=active  href=Login.Jsp ><i class="fa fa-fw fa-user"></i>Login</a></li>
  
</ul>
<div class="FormContainer">
  <form action="/Home.Jsp" method="POST">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">
    
    <label for="Email">Email</label>
    <input type="text" id="Email" name="Email" placeholder="Your Email..">
    
    <label for="Gender">Gender</label>
    <select id="Gender" name="Gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select>
  <p>Please make sure you enterd the correct email.An OTP will sent to above email</p>
    <input type="submit" value="Create Account">
  </form>
</div>
</body>
</html>