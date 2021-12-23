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
  	<link  rel="stylesheet" type="text/css" href="/css/responsive.css">
  	<link  rel="stylesheet" type="text/css" href="/bootstrap.css">  
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>

<style>

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: #F95F0D;
   text-align: center; 
   line-height: 80%;  
}

hr.new5 {
  border: 2px solid gray;
  border-radius: 1px;
  margin:auto;
  width:70%;
}


@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,700,300italic);
*, *:before, *:after { box-sizing: border-box; }


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

.collapse {
    display: none
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
 
#container { 
font-family: 'Open Sans', sans-serif;
font-size: 10px;
display: block;
max-width: 860px;
margin-top: 137px; 
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

h2 { 
border-bottom: 1px solid black; 
border-top: 1px solid black; 
color: green;
font-family: "Berlin San FB Demi", Georgia, serif; 
font-size: 1.5em; 
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
font-size: 1.68em;
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
  padding: 8px;
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

</style>

<body>
	<!-- Navbar -->
	<div class="w3-top my-div-id">
		<img src = "${contextPath}/images/vbvbvb-1.png" style="width:100%">
		<div class="w3-bar w3-camo-black w3-card">
    		<a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>  
   			
			<div class="w3-dropdown-hover w3-hide-small">
      		<button class="w3-padding-large w3-button" title="More">Admin<i class="fa fa-caret-down"></i></button>     
      			<div class="w3-dropdown-content w3-bar-block w3-card-4">
        			<a href="/setfee" class="w3-bar-item w3-button">Set Fee</a>        
					<a href="/resetpwd" class="w3-bar-item w3-button">Reset Pass</a>
					<a href="/delTrans" class="w3-bar-item w3-button">Del Payment</a>
      			</div> 
    		</div>
    		
    		<div class="w3-dropdown-hover w3-hide-small">
      		<button class="w3-padding-large w3-button" title="More">Organize Student<i class="fa fa-caret-down"></i></button>     
      			<div class="w3-dropdown-content w3-bar-block w3-card-4">
        			<a href="/addstudentview" class="w3-bar-item w3-button">Add</a>
    				<a href="/edit" class="w3-bar-item w3-button">Edit</a>
    				<a href="/payments" class="w3-bar-item w3-button">Payments</a>
 					<a href="/attendance" class="w3-bar-item w3-button">Attendance</a>
      			</div> 
    		</div>
    		
   			<a href="/feecollections" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Fee Collections</a>
    		<a href="/smsgen" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SMS Generation</a>
    	
    		<div class="w3-dropdown-hover w3-hide-small">
      		<button class="w3-padding-large w3-button" title="More">Examination<i class="fa fa-caret-down"></i></button>     
      			<div class="w3-dropdown-content w3-bar-block w3-card-4">
        			<a href="/addmarks" class="w3-bar-item w3-button">Add Marks</a>
        			<a href="/halltickets" class="w3-bar-item w3-button">Hall Tickets</a>
       			</div> 
    		</div>
    		
    		<div class="w3-dropdown-hover w3-hide-small">
      		<button class="w3-padding-large w3-button" title="More">Settings <i class="fa fa-caret-down"></i></button>     
      			<div class="w3-dropdown-content w3-bar-block w3-card-4">
        			<a href="/tutionfee" class="w3-bar-item w3-button">Tution Fee</a>
        			<a href="/busfee" class="w3-bar-item w3-button">Bus Fee</a>
        			<a href="/hostelfee" class="w3-bar-item w3-button">Hostel Fee</a>
        			<a href="/settings" class="w3-bar-item w3-button">Default Settings</a>
      			</div> 
    		</div>
    
    		<div class="w3-dropdown-hover w3-hide-small">
      		<button class="w3-padding-large w3-button" title="More">Accounts <i class="fa fa-caret-down"></i></button>     
      			<div class="w3-dropdown-content w3-bar-block w3-card-4">
        			<a href="/tallyreport" class="w3-bar-item w3-button">Income Report</a>
        			<a href="/expenreport" class="w3-bar-item w3-button">Expenditure Report</a>
        			<a href="/addExpenses" class="w3-bar-item w3-button">Add Expenses</a>
      				<a href="/delExpenses" class="w3-bar-item w3-button">Delete Expenses</a>
      			</div> 
    		</div>
   
    		<a href="/logout" class="w3-padding-large w3-hover-red w3-hide-small w3-button w3-right">Sign Out</a>
  
		</div>	
</div>

	<section id="container">
		<h2><b>Expenses Processing</b></h2>
		<form:form method="POST" modelAttribute="registrationForm">
		
		<table id="cust">
			<tr>
			<td><h3>School Code:</h3></td>
			<td>
			<select id="selmenu" name="schoolcode" class="chosen" style="width:120px">
     		<c:forEach items="${myvalues}" var="myval">
            <option value="${myval.expenditureType}">${myval.expenditureType}</option>
            </c:forEach>
      		</select></td>
      		</tr>
      
      		<tr>
			<td><h3>User Name:</h3></td>
			<td>
			<input type="text" name="username" class="selmenu" style="width:200px"></td>
			</tr>
			
			<tr>
      		<td><h3>User Role:</h3></td>
      		<td>
			<select id="selmenu" name="userrole" class="chosen" style="width:120px">
			<option value="Admin">Admin</option>
			<option value="Operator">Operator</option>
			</select></td></tr>
			
			<tr>
			<td><h3>Select Branch:</h3></td>
			<td>
			<input type="text" name="schoolbranch" class="selmenu" style="width:150px"></td>
			<td>
      		<a href="/addbranch"><h3>Add</h3></a></td>
			</tr>
			
      	</table>
      	
      	<div style="text-align:center">
      		<span>
      		<input type="submit" class="w3-btn w3-ripple w3-metro-magenta w3-round" value="Add User">
      		</span>
      	</div>
      	
	</form:form>
	
	<c:if test="${not empty failureMessage}">
    	<div id="serverError" class="alert alert-danger">
        <a href="/addExpenses" class = "close" data-dismiss="alert">&times;</a>
        <strong>Failure!</strong>${failureMessage}
        </div>
    </c:if>
    
    <c:if test="${not empty successMessage}">
    <div id="serverError" class="alert alert-success">
    <a href="/addExpenses" class = "close" data-dismiss="alert">&times;</a>
    <strong>Success!</strong>${successMessage}
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