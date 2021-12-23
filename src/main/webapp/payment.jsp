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

h1 { 
  color: #555; 
  margin: 3rem 0 1rem 0; 
  padding: 0;
  font-size: 1.5rem;
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

#customers {
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
	font-size: 18px;
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
	padding: 4px !important;
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

table.center {
    margin-left:auto; 
    margin-right:auto;
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
		<h2><b>Payments Processing</b></h2>
		<form:form method="POST" modelAttribute="paymentForm">
		<c:if test="${not empty sucMessage}">
        		<div id="serverError" class="alert alert-success">
        		<a href="/payments" class = "close" data-dismiss="alert">&times;</a>
        		<strong>Success!</strong>${sucMessage}<a href="/printreceipt" target="_blank">Print</a>
			</div>
    	</c:if>	
		<div style="text-align:center;">	
		<h3>Choose Fee Type:</h3>
			<select id="recipient" name="feetype" class="selmenu" style="width:150px">
  			<option value="Tution Fee">Tution Fee</option>
     		<option value="Bus Fee">Bus Fee</option>
      		</select>
      		
      		
    	</div>
		<div style="text-align:center;">
		<span>
			<h3>Search Student:</h3>
			<select id="selmenu" name="stuid" tabindex="1" class="chosen" style="width:300px">
  			<option value=""></option>
     		<c:forEach items="${myvalues}" var="myval">
            <option value="${myval.stuId}">${myval.stuNme} ${myval.stuClass} ${myval.stuSec}</option>
            </c:forEach>
      		</select>
      	</span>
      	<span>
      		<input type="submit" class="w3-btn w3-ripple w3-metro-magenta w3-round" style="padding:4px 15px" value="Go">
      	</span>
      	</div>
      	
      	
	</form:form>
	
	<c:if test="${not empty successMessage}">
    <div>
        <form:form method="POST" modelAttribute="paymentForm">
        	<table id="customers">
        	<tr>
        	<th>Student Id</th>
        	<th>Student Name</th>
        	<th>Class</th>
        	<th>Section</th>
        	<th>Balance Fee</th>
        	</tr>
        	<tr>
        	<td>${stuId}</td>
        	<td>${stuNme}</td>
        	<td>${stuClass}</td>
        	<td>${stuSec}</td>
        	<td>${balfee}</td>
        	</table>	
        	
        	<br>
        	
        	<table style="text-align:center">
        	<tr>
        	<td><h3>Amount:</h3><input type="text"  name="amtrcvd" placeholder="Enter Amount.."  class="selmenu"></td>
			
			<td><h3>Amount Payed By:</h3><input type="text"  name="amtrcvdfrom" placeholder="Enter Amount Payed by.." class="selmenu"></td>
			
			</tr></table>
			
			<div style="text-align:center;">
				<span>
      			<input type="submit" class="w3-btn w3-ripple w3-metro-magenta w3-round" value="Proceed">
      			</span>
			</div>
			
        </form:form>
        <c:if test="${not empty failureMessage}">
        	<div id="serverError" class="alert alert-danger">
        	<a href="/payments" class = "close" data-dismiss="alert">&times;</a>
        	<strong>Failure!</strong>${failureMessage}
        	</div>
    	</c:if>
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
</html>