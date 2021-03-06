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
  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.5/chosen.jquery.min.js"></script>
  	
  	<link  rel="stylesheet" type="text/css" href="/css/responsive.css">
  	<link  rel="stylesheet" type="text/css" href="/bootstrap.css">
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-metro.css">
  	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">
  	
  	<link rel="stylesheet" media="screen and (min-height: 201px)" href="css/fixedfooter.css">
	<link rel="stylesheet" media="screen and (max-height: 200px)" href="css/footer.css">

  	<!-- jQuery -->
  	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">
  	<!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
  	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
  	  	
  	<script type="text/javascript">	  	
  	function submitForm() {
		var x = document.getElementsByName("template")[0].value;
  		var y = document.getElementsByName("message")[0].value;

  		var test = y.localeCompare(null);

  		if(y === "") {
  			return checkPhone();       
  	    }
  		else
  	  	{
  			var xy = x.concat(y);
  	  		var len = xy.length;
  	  		var lentext = "\nTotal No.of Characters:";
  	  		var totlen=lentext.concat(len);
  	  	  	return confirm(xy.concat(totlen));
  	  	}
 
  	}	

  	function checkPhone() {
  		var x = document.getElementsByName("template")[0].value;
  		var y = document.getElementsByName("message")[0].value;

  		var test = y.localeCompare(null);

  		if(test < 0) {
  			alert('Please enter message to proceed!');
  			document.getElementById("message").style.border = "2px solid red";
  	        return false;
  	    }
  	    
  	}

	function charcount() {
		var y = document.getElementsByName("message")[0].value;
  	  	var characterCount = y.length;
  	  	var current = $('#current'),maximum = $('#maximum'),theCount = $('#the-count');
		current.text(characterCount);
  		 
  		  
  		  /*This isn't entirely necessary, just playin around*/
  		  if (characterCount < 160) {
  		    current.css('color', '#1aff1a');
  		  	theCount.css('font-weight','bold');
  		  }
  		  		  
  		  if (characterCount > 159) {
  		    maximum.css('color', '#ff0000');
  		    current.css('color', '#ff0000');
  		    theCount.css('font-weight','bold');
  		  } else {
  		    maximum.css('color','#1aff1a');
  		    theCount.css('font-weight','bold');
  		  }
  	    
  	}

  	
	</script>
  
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

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 4px;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,700,300italic);
*, *:before, *:after { box-sizing: border-box; }

.wrapper {
  max-width: 75%;
  margin: auto;
}


h1 { 
  color: #555; 
  margin: 3rem 0 1rem 0; 
  padding: 0;
  font-size: 1.5rem;
}

textarea {
  width: 100%;
  min-height: 100px;
  resize: none;
  border-radius: 8px;
  border: 1px solid #ddd;
  padding: 0.5rem;
  color: black;
  font-size:18px;
  box-shadow: inset 0 0 0.25rem #ddd;
  &:focus {
    outline: none;
    border: 1px solid darken(#ddd, 5%);
    box-shadow: inset 0 0 0.5rem darken(#ddd, 5%);
  }
  &[placeholder] { 
    font-style: italic;
    font-size: 1.875rem;
  }
}

#the-count {
  float: right;
  padding: 0.1rem 0 0 0;
  font-size: 0.875rem;
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
  width: 100%;
}

#customers td, #customers th {
  padding: 8px;
}


#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  color: white;
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

.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
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
			<h2><b>SMS Generation</b></h2>
			
			<form:form name="form2" method="POST" onsubmit="return submitForm(this)">
			<div style="text-align:center;">
			<span>
				<h3>Select Template:</h3>
				<select id="recipient" name="template"  class="selmenu">
  					<option value="Dear Parent,">Dear Parent</option>
     				<option value="Dear Student,">Dear Student</option>
      				<option value="Dear Staff,">Dear Staff</option>
     				<option value="School Fee,">School Fee</option>
         		</select>
			</span>
			</div>	
			
			<div style="text-align:right;">
			<span>
				<h3 style="color:orange">SMS Balance:</h3>
				<h3 style="color:green">${smscount}</h3>
			</span>
			</div>
			
			<textarea name="message" id="styled" onkeyup="charcount()" onblur="setbg('white')" value="Welcome" placeholder="Enter your message here..."></textarea>
			<div id="the-count">
    			<span id="current">0</span>
    			<span id="maximum"></span>
  			</div>
			
			
			<div style="text-align:center;">
			<span class="label" style="color:red"><b>"Note: Don't use '&' in Message Box"</b></span>
			</div>
			
			
			<div id="wrapping" class="clearfix">
			
					<table id="customers">
					<tr>
					<td align="center">
					<b><input type="submit" name="all" class="w3-btn w3-ripple w3-blue w3-round"  value="Send To All" >				
					</b></td>
					<td align="center">
					<b><input type="submit" name="staff" class="w3-btn w3-ripple w3-blue w3-round" value="Send to Staff">				
					</b></td>
					<td align="center">
					<b><input type="button" class="w3-btn w3-ripple w3-blue w3-round" onclick="myFunction()" value="Specific Classes">				
					</b></td>
					<td align="center">
					<b><input type="button" class="w3-btn w3-ripple w3-blue w3-round" onclick="myFun()" value="Specific Stu">				
					</b></td>
					</tr>
					</table>
				</div>
				
				<div id="myselection">		
						<table class="center">
							<tr>
							<td><h3>From Class:</h3></td>
							<td>
							<select id="recipient" name="frclass"  class="selmenu">
  								<option value="NUR">NUR</option>
     				 			<option value="LKG">LKG</option>
      							<option value="UKG">UKG</option>
     							<option value="I">I</option>
      							<option value="II">II</option>
      							<option value="III">III</option>
      							<option value="IV">IV</option>
      							<option value="V">V</option>
      							<option value="VI">VI</option>
     	 						<option value="VII">VII</option>
      							<option value="VIII">VIII</option>
      							<option value="IX">IX</option>
      							<option value="X">X</option>
      						</select></td>
      						<td>
      						<h3>To Class:</h3>
							<select id="recipient" name="toclass"  class="selmenu">
  								<option value="NUR">NUR</option>
     				 			<option value="LKG">LKG</option>
      							<option value="UKG">UKG</option>
     							<option value="I">I</option>
      							<option value="II">II</option>
      							<option value="III">III</option>
      							<option value="IV">IV</option>
      							<option value="V">V</option>
      							<option value="VI">VI</option>
     	 						<option value="VII">VII</option>
      							<option value="VIII">VIII</option>
      							<option value="IX">IX</option>
      							<option value="X">X</option>
      						</select></td>
      						<td>
      						<input type="submit" name="specificclasses" class="w3-btn w3-ripple w3-metro-magenta w3-round" value="Submit"></td>
      						</tr>				
						</table>
					</div>
				
				<div id="mysel">		
						<table class="center">
							<tr>
								<td><h3>Search:</h3></td>
								<td>
								<select  name="stuid" class="selmenu" style="width:250px">
  									<option value=""></option>
     				 				<c:forEach items="${myvalues}" var="myval">
                					<option value="${myval.stuId}">${myval.stuNme} ${myval.stuClass} ${myval.stuSec}</option>
            						</c:forEach>
      							</select>
      							</td>
      							<td>
      							<input type="submit" name="onestudent" class="w3-btn w3-ripple w3-metro-magenta w3-round" style="font-size:10px" value="Submit">
      							</td>					
						</table>
					</div>
				</form:form>
		</section>
		<script src="${contextPath}/images/welcome.js"></script>
	
<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright ? 2020-2021 All Rights Reserved</p>  
</div>
	
	
	<script>
	function myFunction() {
  	var x = document.getElementById("myselection");
  	var y= document.getElementById("mysel");
  	if (x.style.display == "block") {
    	x.style.display = "none";
  	} else {
    	x.style.display = "block";
  	}

  	if (y.style.display == "block") {
    	y.style.display = "none";
  	}   	
	}
	</script>
	
	<script>
	function myFun() {
  	var x = document.getElementById("mysel");
  	var y= document.getElementById("myselection");
  	if (x.style.display == "block") {
    	x.style.display = "none";
  	} else {
    	x.style.display = "block";
  	}

  	if (y.style.display == "block") {
    	y.style.display = "none";
  	}   
  	
	}
	</script>
	
</body>
</html>