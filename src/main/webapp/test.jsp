<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="htmlcss bootstrap menu, navbar, mega menu examples" />
<meta name="description" content="Bootstrap navbar examples for any type of project, Bootstrap 4" />  

<title>Student Enrollment</title>

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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-camo.css">

<link  rel="stylesheet" type="text/css" href="/css/responsive.css">
<link  rel="stylesheet" type="text/css" href="/bootstrap.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-metro.css">



<!-- jQuery -->

<!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,600&display=swap" rel="stylesheet">

<style type="text/css">

.footer {
   left: 0;
   bottom: 0;
   width: 100%;
   color: #F95F0D;
   text-align: center; 
   line-height: 80%;  
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

#error {
border-color: red;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(241, 19, 30, 0.82);
outline: 0 none; 
}

.has-error {
    color: red
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,700,300italic);
*, *:before, *:after { box-sizing: border-box; }

#cust {
  width: 100%;
  border-collapse: collapse;  
}

#cust td, #cust th {
  padding: 4px;
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
font-weight: bold;
font-size: 1.44em;
margin-bottom: 10px;
}

#DOB {
font-size: 10px;
color: #676767;
padding: 3px !important;
width: 125px;
border-style: solid;
border-width: 1px;
border-radius: 4px;
border-color: #dedede;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
}

#STUADM {
font-size: 12px;
color: #676767;
padding: 3px !important;
width: 125px;
border-style: solid;
border-width: 1px;
border-radius: 4px;
border-color: #dedede;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
}

.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
}

.txtinput { 
display: block;
font-family: "Helvetica Neue", Arial, sans-serif;
border-style: solid;
border-width: 1px;
border-color: #dedede;
margin-bottom: 20px;
font-size: 1.55em;
padding: 5px 15px;
padding-left: 16px;
border-radius: 4px;
width: 60%;
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

.selmenu {
	font-size: 12px;
	color: #676767;
	padding: 3px !important;
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

.selmen {
font-size: 12px;
color: #676767;
padding: 3px !important;
width: 125px;
border-style: solid;
border-width: 1px;
border-radius: 4px;
border-color: #dedede;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset;
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset; 
transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-webkit-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-moz-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
-o-transition: border 0.15s linear 0s, box-shadow 0.15s linear 0s, color 0.15s linear 0s;
}

.selmen:focus { 
color: #333;
border-color: rgba(41, 92, 161, 0.4);
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) inset, 0 0 8px rgba(41, 92, 161, 0.6);
outline: 0 none; 
}
</style>

</head>
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
			<h2><b>New Student Enrollment</b></h2>
			<form:form name="hongkiat" id="hongkiat-form" method="POST" modelAttribute="userForm">
			<div id="wrapping" class="clearfix">

				
				<input type="text" class="txtinput" name="stuNme"  placeholder="Student name..">
				
            	<input type="text" class="txtinput" name="stuFthnme"  placeholder="Father name.." >
           		<input type="text"  name="stuMthnme" placeholder="Mother name.." class="txtinput">
			
			<table>
				<tr><td><h3>Contact:</h3></td></tr>
				<tr><td><input type="text" name="stuCont1" placeholder="Mobile No.." autocomplete="off" class="selmen"></td></tr>
			
				<tr><td>
					<h3>Gender:</h3>
					<span class="radiobadge">
						<label for="low"><b>Girl</b></label>
						<input type="radio" id="low" name="stuGender" value="G" checked>
						
						<label for="med"><b>Boy</b></label>
						<input type="radio" id="med" name="stuGender" value="B" >
						
					</span>	
				</td></tr>
				<tr><td>
					<h3>Bus Service:</h3>
					<select name="stuBussrvcroute" class="selmenu">
					<option>Not Required</option>
            		<c:forEach items="${myroutes}" var="myrut">
                	<option value="${myrut.route}">${myrut.route}</option>
            		</c:forEach>
       				</select>					
				</td></tr>
				
				<tr><td>
					<h3>Caste:</h3>
					<input type="text" name="stuCaste" placeholder="Caste.." class="selmen" autocomplete="off">				
					<input type="text" name="stuSubcaste" placeholder="Subcaste.." class="selmen"  autocomplete="off">
				<br style="clear:both;">
				</td></tr>

			
			<tr><td>
				<h3>D.O.B:</h3>
				<table id="tblForm1" border="0" cellpadding="5" cellspacing="0">
    			<tr>
        			<td><input type="text" class="date-format1 selmen" name="stuDob" placeholder="DD/MM/YYYY" /></td>
        			<td><span class="error" style="display: none;color:red;font-size:1rem;margin-top:5px">Invalid Date. Only dd/MM/yyyy format allowed.</span></td>
    			</tr>
				</table>
			</td></tr>
		
			
			<tr><td>
				<h3>Admission Date:</h3>
				<table id="tblForm2" border="0" cellpadding="5" cellspacing="0">
    			<tr>
        			<td><input type="text"  id = "datepicker2" class="selmen" name="stuAdmdte" placeholder="DD/MM/YYYY" /></td>
        			<td><span class="error" style="display: none;color:red;font-size:1rem;margin-top:5px">Invalid Date. Only dd/MM/yyyy format allowed.</span></td>
    			</tr>
				</table>
			</td></tr>
									
			<tr><td>
				<h3>Class:</h3>
					<select id="recipient" name="stuClass" class="selmen">
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
      					</select>
			</td></tr>
				
			<tr><td>
				<h3>Section:</h3>
					<select id="recipient" name="stuSec"  class="selmen">					
      					<option value="A">A</option>
      					<option value="B">B</option>
      					<option value="C">C</option>
      				</select>
			</td></tr>

			<tr><td><h3>Address:</h3></td></tr>
			<tr><td><input type="text" name="stuPlotno" placeholder="House No./Plot No.." class="selmen"></td></tr>
    		<tr><td><input type="text" name="stuStreet" placeholder="Street Name.." class="selmen"></td></tr>
    		<tr><td><input type="text" name="stuCity" placeholder="City Na.." class="selmen"></td></tr>
    		<tr><td><input type="text" name="stuPin" placeholder="Pincode.." class="selmen"></td></tr>
		</table>
		</div>
		
		<br>
		
		
		<div style="text-align:center">
			<span>			
      			<input type="reset" class="w3-btn w3-ripple w3-metro-orange w3-round" value="Reset">
      			<input type="submit" class="w3-btn w3-ripple w3-metro-green w3-round" value="Submit">
			</span>
		</div>
		
		<c:if test="${not empty successMessage}">
        	<div id="serverError" class="alert alert-success">
        		<a href="/addstudentview" class = "close" data-dismiss="alert">&times;</a>
        		<strong>Success!</strong>${successMessage}
        	</div>
    	</c:if>
    	
    	<c:if test="${not empty failureMessage}">
        	<div id="serverError" class="alert alert-danger">
        		<a href="/addstudentview" class = "close" data-dismiss="alert">&times;</a>
        		<strong>Error!</strong>${failureMessage}
        	</div>
    	</c:if>
		</form:form>
		</section>



<div class="footer">
  <hr class="new5">
  <p>Developed by nsoftsolutions Copyright © 2020-2021 All Rights Reserved</p>  
</div>  


<script src="${contextPath}/images/welcome.js"></script>

<script>
		$(document).ready(function() {
   		 $("#datepicker2").datepicker();
  		});
</script>		
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
	  $("#hongkiat-form").validate({
	    rules: {
	    	stuNme : {
	        required: true      
	      },
	      stuFthnme : {
		    required: true	       
		  },
		  stuCont1: {
	      	required: true,
	        minlength:10,
	        maxlength:10 
	      },
	      stuGender:{
			required:true
		  },
		  
	      stuSec : {
		      	required: true
		      },
	     
		  stuDob: {
			required: true	
		  },
		  stuAdmdte: {
			required: true
		  },
		  stuBussrvcroute: {
			required:true
			}
	    },
	    messages : {
	      stuNme: {
		    required:"Student Name cannot be blank"        
	      },
	      stuFthnme: {
		      required:"Father Name cannot be blank"        
		  },
	      stuCont1: {
	        required: "Please enter contact Number",
	        minlength:"contact number should be 10 digits",
	        maxlength:"contact number cannot exceed 10 digits"
	      },
	      stuGender: {
	        required: "Please select Student Gender"
	      },

		  stuSec: {
			   	required: "Please select Section"
		  },
		  stuDob: {
			required: "Please provide Student Date Of Birth"
		  },
		  stuAdmdte: {
			required: "Please provide Student Admission Date"
		  },
		  stuBussrvcroute: {
			required: "Please select Van Service Route"
		  }
	    }
	  }); 
	});
</script>

<script type="text/javascript">
    var isShift = false;
    var seperator = "/";
    window.onload = function () {

        //Reference the Table.
        var tblForm = document.getElementById("tblForm1");
 
        //Reference all INPUT elements in the Table.
        var inputs = document.getElementsByTagName("input");

        var x = document.getElementsByClassName("date-format");
      	var y = "date-format1 selmen";
      	
        //Loop through all INPUT elements.
        for (var i = 0; i < inputs.length; i++) {
            //Check whether the INPUT element is TextBox.
            if (inputs[i].type == "text" ) {
                //Check whether Date Format Validation is required.
                var x = inputs[i].className;
                
                if (x.localeCompare(y) == 0) {				 
                    //Set Max Length
                    inputs[i].setAttribute("maxlength", 10);
 
                    //Only allow Numeric Keys
                    inputs[i].onkeydown = function (e) {
                        return IsNumeric(this, e.keyCode);
                    };
 
                    //Validate Date as User types.
                    inputs[i].onkeyup = function (e) {
                        ValidateDateFormat(this, e.keyCode);
                    };
                }
            }
        }
    };
 
    function IsNumeric(input, keyCode) {
        if (keyCode == 16) {
            isShift = true;
        }
        //Allow only Numeric Keys.
        if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode <= 37 || keyCode <= 39 || (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
            if ((input.value.length == 2 || input.value.length == 5) && keyCode != 8) {
                input.value += seperator;
            }
 
            return true;
        }
        else {
            return false;
        }
    };
 
    function ValidateDateFormat(input, keyCode) {
        var dateString = input.value;
        if (keyCode == 16) {
            isShift = false;
        }
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString) || dateString.length == 0) {
            ShowHideError(input, "none");
        } else {
            ShowHideError(input, "block");
        }
    };
 
    function ShowHideError(textbox, display) {
        var row = textbox.parentNode.parentNode;
        var errorMsg = row.getElementsByTagName("span")[0];
        if (errorMsg != null) {
            errorMsg.style.display = display;
        }
    };
</script>
</body>
</html>