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
  	<link  rel="stylesheet" type="text/css" href="/fee.css">
  	<link  rel="stylesheet" type="text/css" href="/css/responsive.css">
  	<link  rel="stylesheet" type="text/css" href="/bootstrap.css">
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">
  	
	<link rel="stylesheet" media="screen and (min-height: 201px)" href="css/fixedfooter.css">
	<link rel="stylesheet" media="screen and (max-height: 200px)" href="css/footer.css">

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

.has-error {
    color: red
}


.has-error {
    color: red
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

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 4px;
}

.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
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
			<h2><b>Bus Fee Settings</b></h2>
			<form:form name="hongkiat" id="hongkiat-form" method="POST" modelAttribute="busfeeForm">
			<div id="wrapping" class="clearfix">
				<section id="aligned">	 
  		     
            	<section id="recipientcase">
				<h3>Route :</h3>
					<input type="text"  name="route" placeholder="Route.." autocomplete="off" tabindex="1"  class="txtinp">
				</section>	
			</section>
			
			<section id="aside" class="clearfix">
				<section id="recipientcase">
				<h3>Amount:</h3>
					<input type="text"  name="routeamt" placeholder="Amount.." autocomplete="off" tabindex="2" class="txtinput">
				</section>
				
			</section>
			
			<section id="aside" class="clearfix">
				<section id="recipientcase">
				<h3><a href="/viewbusfee">View</a></h3>
					
				</section>
				
			</section>
			
		</div>

		<section id="buttons">
			<input type="submit" name="submit" id="submitbtn" class="submitbtn" tabindex="3" value="Submit this!">
			<br style="clear:both;">
		</section>
		
		<c:if test="${not empty successMessage}">
        	<div id="serverError" class="alert alert-success">
        		<a href="/tutionfee" class = "close" data-dismiss="alert">&times;</a>
        		<strong>Success!</strong>${successMessage}
        	</div>
    	</c:if>
    	
    	<c:if test="${not empty failureMessage}">
        	<div id="serverError" class="alert alert-danger">
        		<a href="/tutionfee" class = "close" data-dismiss="alert">&times;</a>
        		<strong>Failure!</strong>${failureMessage}
        	</div>
    	</c:if>
    	
		</form:form>
		</section>
		<script src="${contextPath}/images/welcome.js"></script>
	</div>

<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>	
	
</body>
</html>