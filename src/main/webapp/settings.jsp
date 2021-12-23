<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<link rel="shortcut icon" href="http://static02.hongkiat.com/logo/hkdc/favicon.ico">
  	<link rel="icon" href="http://static02.hongkiat.com/logo/hkdc/favicon.ico">
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.5/chosen.jquery.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.5/chosen.min.css"> 	
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-metro.css">
 
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">
  	
  	<link rel="stylesheet" media="screen and (min-height: 521px)" href="css/fixedfooter.css">
	<link rel="stylesheet" media="screen and (max-height: 520px)" href="css/footer.css">
  	
  	<!-- jQuery -->

	<!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">
  	
</head>

<style>

/* ============ only desktop view ============ */
@media all and (min-width: 992px) {
	.navbar .nav-item .dropdown-menu{  display:block; opacity: 0;  visibility: hidden; transition:.3s; margin-top:0;  }
	.navbar .nav-item:hover .nav-link{ color: #fff;  }
	.navbar .dropdown-menu.fade-down{ top:80%; transform: rotateX(-75deg); transform-origin: 0% 0%; }
	.navbar .dropdown-menu.fade-up{ top:180%;  }
	.navbar .nav-item:hover .dropdown-menu{ transition: .3s; opacity:1; visibility:visible; top:100%; transform: rotateX(0deg); }
}	
/* ============ desktop view .end// ============ */

.backg-primary{background-color:#000000!important}
 a.backg-primary:focus,a.backg-primary:hover,button.backg-primary:focus,button.backg-primary:hover{background-color:#0062cc!important}

body 
{
width: auto;
min-width: 1024px;
height:100%;
margin-left: 0 auto;
margin-right: 0  auto;
display: block;
font-family: 'Open Sans', sans-serif;
}

#container { 
font-family: 'Open Sans', sans-serif;
font-size: 12px;
display: block;
max-width: 860px;
margin-top: 2px; 
margin-left: auto;
margin-right: auto;    
border: 3px solid green;
padding: 10px;
padding: 15px 15px; 
background: #fff; 
border-radius: 6px; 
-webkit-border-radius: 6px; 
-moz-border-radius: 6px;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box; 
box-sizing: border-box; 
}

.wrapper {
  max-width: 75%;
  margin: auto;
}

#the-count {
  float: right;
  padding: 0.1rem 0 0 0;
  font-size: 0.875rem;
}

.alert {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px
}

.alert-success {
    color: #3c763d;
    background-color: #dff0d8;
    border-color: #d6e9c6;
    font-size: 2.0em; 
}

.alert-danger {
    color: #a94442;
    background-color: #f2dede;
    border-color: #ebccd1
}

.alert-danger hr {
    border-top-color: #e4b9c0
}

.alert-danger .alert-link {
    color: #843534
}

.onoffswitch {
    position: relative; width: 90px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}

.onoffswitch-checkbox {
    position: absolute;
    opacity: 0;
    pointer-events: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 2px solid #999999; border-radius: 20px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 30px; padding: 0; line-height: 30px;
    font-size: 14px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "ON";
    padding-left: 10px;
    background-color:#22F236; color: #FFFFFF;
}
.onoffswitch-inner:after {
    content: "OFF";
    padding-right: 10px;
    background-color: #F9220A; color: #999999;
    text-align: right;
}
.onoffswitch-switch {
    display: block; width: 18px; margin: 6px;
    background: #FFFFFF;
    position: absolute; top: 0; bottom: 0;
    right: 56px;
    border: 2px solid #999999; border-radius: 20px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
}

.error {
    border:2px solid red;
}

#the-count {
  float: right;
  padding: 0.1rem 0 0 0;
  font-size: 0.875rem;
}

#page-wrap
{
margin:20px auto;
width:750px
}
 
h2 { 
border-bottom: 1px solid black; 
border-top: 1px solid black; 
color: green;
font-family: "Berlin San FB Demi", Georgia, serif; 
font-size: 1.2em; 
line-height: 1.8em; 
font-weight: 500; 
margin-top: 10px; 
margin-bottom: 10px; 
padding: 5px 0; 
text-align: center; 
}

h3 {
letter-spacing: -0.04em;
display:inline-block;
font-weight: bold;
font-size: 1.28em;
margin-bottom: 10px;
}   
 
#aligned { 
box-sizing: border-box; 
float: left; 
width: 200px;
margin-right: 100px; 
}

#aside {
	float: left;
	width: 200px;
	padding: 0;
	box-sizing: border-box;
}

.selmenu {
	font-size: 12px;
	color: #676767;
	padding: 3px !important;
	border: 1px solid #aaa;
	width: 115px;
}

.selmenu:focus { 
color: #333;
border-color: rgba(41, 92, 161, 0.4);
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
outline: 0 none; 
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 4px;
}

.selmenu {
	font-size: 12px;
	color: #676767;
	padding: 6px !important;
	border: 1px solid #aaa;
	width: 115px;
	border-radius: 8px;
}

.selmenu:focus { 
color: #333;
border-color: rgba(41, 92, 161, 0.4);
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
outline: 0 none; 
}

#selmenu {
	font-size: 12px;
	color: #676767;
	padding: 6px !important;
	border: 1px solid #aaa;
	width: 115px;
	border-radius: 8px;
}

#selmenu:focus { 
color: #333;
border-color: rgba(41, 92, 161, 0.4);
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
outline: 0 none; 
}

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 8px;
}

#myselection{
    display: none;
    text-align:center;
}

#mysel{
    display: none;
    float:center;
}

button:active {
  color: yellow;
}

table.center {
    margin-left:auto; 
    margin-right:auto;
}
.center {
  margin: auto;
  margin-top: 130px; 
  max-width: 860px;
  text-align:center;
}

.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
}

</style>

<body class="bg-light">
<img src = "${contextPath}/images/vbvbvb-1.png" style="width:100%">
<div class="container">
<nav class="navbar navbar-expand-lg navbar-dark backg-primary" >
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="main_nav">

<ul class="navbar-nav">
	
	<li class="nav-item dropdown">
		<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown"> Admin </a>
	    <ul class="dropdown-menu fade-up">
		  <li><a class="dropdown-item" href="/setfee"> Set Fee</a></li>
		  <li><a class="dropdown-item" href="/resetpwd"> Reset Password</a></li>
		  <li><a class="dropdown-item" href="/delTrans"> Delete Payment</a></li>
	    </ul>
	</li>
	
	<li class="nav-item dropdown">
		<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">Organize Student</a>
	    <ul class="dropdown-menu fade-up">
		  <li><a class="dropdown-item" href="/addstudentview">Add</a></li>
		  <li><a class="dropdown-item" href="/edit">Edit</a></li>
		  <li><a class="dropdown-item" href="/payments">Payments</a></li>
		  <li><a class="dropdown-item" href="/attendance">Attendance</a></li>
	    </ul>
	</li>
	
	<li class="nav-item"> <a class="nav-link" href="/feecollections">Fee Collections</a> </li>
	<li class="nav-item"><a class="nav-link" href="/smsgen">SMS Generation</a></li>
	
	<li class="nav-item dropdown">
		<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">Examination</a>
	    <ul class="dropdown-menu fade-up">
		  <li><a class="dropdown-item" href="//addmarks">Marks Entry</a></li>
		  <li><a class="dropdown-item" href="/halltickets">Hall Tickets</a></li>
	    </ul>
	</li>
		
	<li class="nav-item dropdown">
		<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">Settings</a>
	    <ul class="dropdown-menu fade-up">
		  <li><a class="dropdown-item" href="/tutionfee">Tution Fee</a></li>
		  <li><a class="dropdown-item" href="/busfee">Bus Fee</a></li>
		   <li><a class="dropdown-item" href="/hostelfee">Hostel Fee</a></li>
		  <li><a class="dropdown-item" href="/settings">Default Settings</a></li>
	    </ul>
	</li>
	
	<li class="nav-item dropdown">
		<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">Accounts</a>
	    <ul class="dropdown-menu fade-up">
		  <li><a class="dropdown-item" href="/tallyreport">Income Report</a></li>
		  <li><a class="dropdown-item" href="/expenreport">Expenditure Report</a></li>
		   <li><a class="dropdown-item" href="/addExpenses">Add Expenses</a></li>
		  <li><a class="dropdown-item" href="/delExpenses">Delete Expenses</a></li>
	    </ul>
	</li>	
</ul>

<ul class="navbar-nav ml-auto">
	<li class="nav-item"><a class="nav-link" href="/logout"> Sign Out</a></li>	
</ul>
  </div> <!-- navbar-collapse.// -->

</nav>

<table id="cust" style="text-align:center">
	<tr> 
	<td>Branch:<span class="rainbow">${defbranch}</span></td> 
	<td>Acadamic Year:<span class="rainbow">${defacadyear}</span></td> 
	<td>User Loged In:<span class="rainbow">${username}</span></td> 
	</tr>
</table>
</div><!-- container //  -->

	<section id="container">
		<h2><b>Default System Settings</b></h2>
		<form:form method="PUT" modelAttribute="codevalues" >
		
		<table id="cust">
			<tr>
			<td><h3>Set Branch:</h3></td>
			<td>
			<select id="selmenu" name="defbranch" tabindex="1" class="chosen" style="width:200px">
  			<option value="${defbranch}">${defbranch}</option>
     		<c:forEach items="${mybranch}" var="myval">
            <option value="${myval.branch}">${myval.branch}</option>
            </c:forEach>
      		</select></td>
      		</tr>
      
      		<tr>
			<td><h3>Set Academic Year:</h3></td>
			<td>
			<select id="selmenu" name="defacadyear" style="width:100px">
				<option value="${defacadyear}">${defacadyear}</option>
				<option value="2019-20">2019-20</option>
				<option value="2020-20">2020-20</option>
			</select>
			</td>
			</tr>
			
			<tr>
			<td><h3>Fee Settings:</h3></td>
			<td>
				<h3><a href="/feesettings" style="color:blue"><i>Click here</i></a></h3>
			</td>
			</tr>
			
			<tr>
			<td><h3>Allow Admin Access:</h3></td>
			<td>
				<h3><a href="/allocateaccess" style="color:blue"><i>Click here</i></a></h3>
			</td>
			
			</tr>
				
      	</table>
      	
      	<div style="text-align:center">
      		<span>
      		<input type="submit" class="w3-btn w3-ripple w3-metro-magenta w3-round" value="Update">
      		</span>
      	</div>
      	
	</form:form>
	
	<c:if test="${not empty failureMessage}">
    	<div id="serverError" class="alert alert-danger">
        <a href="/settings" class = "close" data-dismiss="alert">&times;</a>
        <h3>Failure! ${failureMessage}</h3>
        </div>
    </c:if>
    
    <c:if test="${not empty successMessage}">
    <div id="serverError" class="alert alert-success">
    <a href="/settings" class = "close" data-dismiss="alert">&times;</a>
    <h3>Success! ${successMessage}</h3>
    </div>
    </c:if> 
    
    </section>
<script src="${contextPath}/images/welcome.js"></script>
<script>
function printJS('')	
</script>


<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>
	
</body>
<script type="text/javascript">
$(".chosen").chosen();
</script>
<script>
$(function() {
	$("#datepicker").datepicker();
});
</script>
</html>