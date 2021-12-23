<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="htmlcss bootstrap menu, navbar, mega menu examples" />
<meta name="description" content="Bootstrap navbar examples for any type of project, Bootstrap 4" />  

<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/bootstrap-dropdownhover.min.css">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">

<link rel="stylesheet" media="screen and (min-height: 201px)" href="css/fixedfooter.css">
<link rel="stylesheet" media="screen and (max-height: 200px)" href="css/footer.css">
<style type="text/css">

.backg-primary{background-color:#000000!important}
a.backg-primary:focus,a.backg-primary:hover,button.backg-primary:focus,button.backg-primary:hover{background-color:#0062cc!important}

.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
}


#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 4px;
}

body 
{
zoom:0%;
width: auto;
min-width: 1024px;
height:100%;
margin-left: 0 auto;
margin-right: 0  auto;
display: block;
font-family: 'Open Sans', sans-serif;
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

.has-error {
    color: red
}

.label {
  color: white;
  padding: 8px;
  font-family: Arial;
}
.success {background-color: #4CAF50;} 

.txtinput { 
display: inline-block;
font-family: "Helvetica Neue", Arial, sans-serif;
border-style: solid;
border-width: 1px;
border-color: #dedede;
margin-bottom: 20px;
font-size: 1.12em;
padding: 3.7px 25px;
padding-left: 16px;
width: 18%;
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
  font-size: 150.5%;
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

label.error {
    color: red;
    font-size: 1rem;
    display: block;
    margin-top: 5px;  
}

input.error, textarea.error {
border-color: red;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
outline: 0 none; 
}

#cust {
  width: 100%;
  border-collapse: collapse; 
   font-family: "Trebuchet MS", Arial, Helvetica, sans-serif; 
}

#cust td, #cust th {
  padding: 8px;
}

.selmenu {
	font-size: 12px;
	color: black;
	padding: 6px !important;
	border: 1px solid #aaa;
	width: 115px;
	border-radius: 4px;
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


</style>

<body>
<img src = "${contextPath}/images/vbvbvb-1.png" style="width:100%">
<div class="container">

<nav class="navbar navbar-expand-lg navbar-dark backg-primary">
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

</div>

</nav>
<table id="cust" style="text-align:center">
	<tr> 
	<td>Branch:<span class="rainbow">${defbranch}</span></td> 
	<td>Acadamic Year:<span class="rainbow">${defacadyear}</span></td> 
	<td>User Loged In:<span class="rainbow">${username}</span></td> 
	</tr>
</table>

</div>
	<section id="container">
	<h2><b>Between Dates Fee Receipts</b></h2>
	<form:form id="btwdates" method="POST" action="/betweendte">
				<div style="text-align:center;">
					<table id="cust">
					<tr>
						<td align="center"><h3>From Date:</h3>	</td>
				  		<td align="center"> <input type="text" id="datepicker1" name="frdte" value="${frdte}" class="selmenu" placeholder="From Date.."></td>
						<td align="center"><h3>To Date:</h3></td>	
						<td align="center"><input type="text" id="datepicker2" name="todte"  value="${todte}" class="selmenu" placeholder="To Date.."></td>			
						<td align="center"><input type="submit" style="padding:8.5px 25px" class="w3-btn w3-ripple w3-blue w3-round" value="Go"></td>
					</tr>
					</table>
				</div>
				
				</form:form>
				
				<a href="/feecollections" style="color:blue;font-size:20px;font-family: 'Open Sans', sans-serif">Back</a>
				<c:set var="total" value="${0}"></c:set>
				<c:if test="${not empty successMessage}">
				<div id="wrapping" class="clearfix">
						
				<table id="customers">
    			<tr>
      				<th align="justify"><b>Transaction Id</b></th>
      				<th align="center"><b>Student Name</b></th>
      				<th align="center"><b>Student Class</b></th>
      				<th align="center"><b>Student Section</b></th>
      				<th align="center"><b>Fee Type</b></th>
      				<th align="center"><b>Amount Paid</b></th>
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
	    
    			</c:if>
    			
		</section>
		<script src="${contextPath}/images/welcome.js"></script>
		<script>
		$(document).ready(function() {
   		 $("#datepicker1").datepicker();
  		});
		</script>
		<script>
		$(document).ready(function() {
   		 $("#datepicker2").datepicker();
  		});
		</script>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

<script>
$(document).ready(function() {
	  $("#btwdates").validate({
	    rules: {
	      frdte : {
	        required: true
	      },
	      todte: {
	        required: true 
	      } 
	    },
	    messages : {
	      frdte: {
	        required: "from date cannot be null"
	      },
	      todte: {
	        required: "to date cannot be null",	      
	      }
	    }
	  });
	});
</script>	
		
<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>	
	
</body>
</html>