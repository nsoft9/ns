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
  	<link  rel="stylesheet" type="text/css" href="/css/responsive.css">
  	<link  rel="stylesheet" type="text/css" href="/bootstrap.css">
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">
  	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">
</head>

<style>

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
font-weight: bold;
font-size: 1.44em;
margin-bottom: 10px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  font-size:150.5%;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: #F95F0D;
   text-align: center; 
   line-height: 80%;  
}

#cust {
  width: 100%;
  border-collapse: collapse; 
   font-family: "Trebuchet MS", Arial, Helvetica, sans-serif; 
}

#cust td, #cust th {
  padding: 8px;
}

hr.new5 {
  border: 2px solid gray;
  border-radius: 1px;
  margin:auto;
  width:70%;
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
			<h2><b>Today's Fee Receipts</b></h2>
			<div id="wrapping" class="clearfix">
				<a href="/feecollections" style="color:blue;font-size:20px;font-family: 'Open Sans', sans-serif">Back</a>	
				<table id="customers">
    			<tr>
      				<th>Transaction Id</th>
      				<th>Student Name</th>
      				<th>Student Class</th>
      				<th>Student Section</th>
      				<th>Fee Type</th>
      				<th>Amount Paid</th>
    			</tr>
    				<c:forEach items="${list}" var="listparm">
    				<tr>
                	<td>${listparm.transid}</td>
                	<td>${listparm.stunme}</td>
                	<td>${listparm.stuclass}</td>
                	<td>${listparm.stusec}</td>
                	<td>${listparm.feetype}</td>
                	<td>${listparm.amtrcvd}</td> 
                	</tr>
            		</c:forEach>	
            			
				</table>
				
				<c:set var="total" value="${0}"/>
				<c:forEach var="article" items="${list}">
    				<c:set var="total" value="${total + article.amtrcvd}" />
				</c:forEach>
					
				<table id="cust">	
            		<tr>
            			<td></td>
            			<td align="center" style="font-size:20px;color:black;font-family: 'Open Sans', sans-serif">Total Amount Collected:</td>
            			<td align="center" style="font-size:20px;font-family: 'Open Sans', sans-serif;color:green">${total}</td>
            		</tr>
            	</table>
            	
            	<table id="cust">	
            		<tr><td align="center"><input type="button" style="font-size:12px;padding:8.5px 25px;font-family: 'Open Sans', sans-serif" class="w3-btn w3-ripple w3-blue w3-round" value="PRINT"></td></tr>
				</table>
				
				
			</div>
	    	
		</section>
		<script src="${contextPath}/images/welcome.js"></script>
<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>
	
	
</body>
</html>