<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
 	
	<link  rel="stylesheet" type="text/css" href="css/start.css">
<script>
$(document).ready(function() {

	  $("#basic-form").validate({
	    rules: {
	      name : {
	        required: true,
	        minlength: 3
	      },
	      age: {
	        required: true,
	        number: true,
	        min: 18
	      },
	      email: {
	        required: true,
	        email: true
	      },
	      stuSec: {
		      	required:true
		  },
	      weight: {
	        required: {
	          depends: function(elem) {
	            return $("#age").val() > 50
	          }
	        },
	        number: true,
	        min: 0
	      }
	    },
	    messages : {
	      name: {
	        minlength: "Name should be at least 3 characters"
	      },
	      age: {
	        required: "Please enter your age",
	        number: "Please enter your age as a numerical value",
	        min: "You must be at least 18 years old"
	      },
	      email: {
	        email: "The email should be in the format: abc@domain.tld"
	      },
	      stuSec:{
			required:"Please select Section"
		  },
	      weight: {
	        required: "People with age over 50 have to enter their weight",
	        number: "Please enter your weight as a numerical value"
	      }
	    }
	  });
	});
</script>
	<title>Insert title here</title>
</head>

<body>
<div class="container">
  <h2 class="title">Registration</h2>
  <h2>Example 1:</h2>
<form id="basic-form" action="" method="post">
    <p>
      <label for="name">Name <span>(required, at least 3 characters)</span></label>
      <input id="name" name="name"  type="text" required>
    </p>
    <p>
      <label for="email">E-Mail <span>(required)</span></label>
      <input id="email" type="email" name="email" required>
    </p>
    
    <table id="tblForm" border="0" cellpadding="5" cellspacing="0">
    <tr>
        <td>Birth Date:</td>
        <td><input type="text" class="date-format" /></td>
        <td><span class="error" style="display: none">Invalid Date. Only dd/MM/yyyy format allowed.</span></td>
    </tr>
</table>
    
    <h3>Section:</h3>
    <p>
	<select id="recipient" name="stuSec" class="form-dropdown validate[required] form-validation-error" style="width:182px; border:1px solid red;"  >
	<option value=""></option>					
    <option value="A">A</option>
    <option value="B">B</option>
    <option value="C">C</option>
    </select>
  	</p>
    <p>
      <input class="submit" type="submit" value="SUBMIT">
    </p>
    
    <p id="demo"></p>
</form>

</div>

<script type="text/javascript">
    var isShift = false;
    var seperator = "/";
    window.onload = function () {
        //Reference the Table.
        var tblForm = document.getElementById("tblForm");
 
        //Reference all INPUT elements in the Table.
        var inputs = document.getElementsByTagName("input");

        var x = document.getElementsByClassName("date-format");


      var y = "date-format";
      
        //Loop through all INPUT elements.
        for (var i = 0; i < inputs.length; i++) {
            //Check whether the INPUT element is TextBox.
            if (inputs[i].type == "text" ) {
                //Check whether Date Format Validation is required.
                var x = inputs[i].className;
                if (x.localeCompare(y) == 0) {

    								
                	document.getElementById("demo").innerHTML = x.localeCompare(y);  
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




