<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title> 
<style>

.LoginForm{

margin: auto;
width:300px;
position: absolute;
 border: 3px solid #73AD21;
 padding: 10px;
 background-color: lightblue;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    /* border: 1px solid #ccc; */
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

div
{
    margin: 200px 100px 200px 600px;
  width:300px;
}
body{
background-color: lightblue;
}
</style>
</head>
<body>

<div>
<div class="LoginForm">
  <form action="/Home.Jsp" method="POST">
    <label for="Email">Email</label>
    <input type="text" id="Email" name="Email" placeholder="Enter email">

    <label for="Password">Password</label>
    <input type="text" id="Password" name="Password" placeholder="Enter Password..">
    <input type="submit" value="Login">
  <!-- p>Please make sure you enterd the correct email.An OTP will sent to above email</p>
    <input type="submit" value="Create Account"> -->
  </form>
</div>
</div>

</body>
</html>