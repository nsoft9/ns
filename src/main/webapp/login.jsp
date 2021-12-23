<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">
<title>Login Page</title>

<style>

body 
{
width: auto;
min-width: 1024px;
height:100%;
margin-left: 0 auto;
margin-right: 0  auto;
display: block;
background: black; 
color: #666;
font-family: 'Open Sans', sans-serif;
background-image:url(${contextPath}/images/bck1.jpg);
}

h2 { 
border-bottom: 1px solid black; 
border-top: 1px solid black; 
color: green;
font-size: 2.0em; 
line-height: 1.8em; 
font-weight: 500; 
margin-top: 10px; 
margin-bottom: 10px; 
padding: 8px 0; 
text-align: center; 
}

/* Full-width input fields */
.txtinput {
width: 80%;
padding: 12px 20px;
margin: 8px 0; 
display: inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
border-radius:4px;
color: #777;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
}

.txtinput:focus { 
color: #333;
border-color: rgba(41, 92, 161, 0.4);
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
outline: 0 none; 
}

/* Set a style for all buttons */
button {
  background-color: #00BFFF;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 25%;
  border-radius: 50%;
}

.container {
  padding: 12px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #00BFFF; /* Fallback color */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid gray;
  border-radius: 5px;
  width:23%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  
}


@media screen and (max-height: 521px) {
 .footer {
   left: 0;
   bottom: 0;
   width: 100%;
   color: #F95F0D;
   text-align: center; 
   line-height: 80%;  
}
  
}

@media screen and (min-height: 520px) {
 .footer {
   position:fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: #F95F0D;
   text-align: center; 
   line-height: 80%;  
}
  
}

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 8px;
}


.has-error {
    color: red
}



</style>
</head>
<body>
<div>

<div class = "model">

	
	<form class="modal-content animate" action="login" method='POST'>
    <div class="imgcontainer">
      <img src = "${contextPath}/images/user.png"  alt="Avatar" class="avatar">
    </div>
    <div class="container">
    <table id="cust">
    <tr>
    <td>
      <label for="uname"><b>Username</b></label> </td>
      <td>
      <input type="text" placeholder="Enter Username" name="username" autofocus ="true" class= "txtinput" required> 
      </td>
      </tr>
    <tr>
    <td>
      <label for="psw"><b>Password</b></label> </td>
      <td>
      <input type="password" placeholder="Enter Password" name="password" class="txtinput" required>  
      </td>
      </tr>
      </table>
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="#" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
    
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
        	<div id="serverError" class="has-error">
        		<strong>Error!</strong>${SPRING_SECURITY_LAST_EXCEPTION.message}
        	</div>
    </c:if>
  </form>
  
</div>

</div>
<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>

</body>
</html>
