<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript">
$(function() {
	
	$.validator.addMethod("lettersonly",function(value,element){
		return this.optional(element)||/^[a-z]+$/i.test(value);
		},"Enter Only Letters without Space");

	
	$("#form").validate({
	
		rules:{
			first_name:{
				required:true,
				first_name:true,
				lettersonly:true
			},
			last_name:{
				
				required:true,
				last_name:true,
				lettersonly:true
			},
			email : {
				required : true,
				email : true
			},
			password : {
				required : true,
				minlength:5
			},
			mobile:{
				required:true,
				number:true,
				minlength:10,
				maxlength:10
			},
			door_no:{
				required : true,
				number:true,
				door_no:true
			},
			street:{
				
				required : true,
				lettersonly:true
			},
			city:{
				
				required : true,
				lettersonly:true
			},
			state:{
				
				required : true,
				lettersonly:true
			},
			pincode:{
				required : true,
				number:true,
				minlength:6,
				maxlength:6
			}
			
		},
			messages:{
				first_name:{
					required:"Firstname can't be Empty"
				
				},
				last_name:{
					required:"Lastname can't be Empty"
					
				},
				email : {
					required:"Email can't be Empty"
					
				},
				password : {
					required : "Password Can't be Empty",
					minlength:"Password should have at least 5 letters"	
				},
				mobile : {
					required : "Mobile Can't be Empty",
					number:"Enter Numbers Only",
					minlength:"Mobile Number should have  10 Digits"	
				},
				door_no:{
					required:"Door number can't be Empty",
					number:"Enter Number Only"
				},
				street:{
					required:"Street can't be Empty"
				},
				city:{
					required:"City can't be Empty"
				},
				state:{
					required:"State can't be Empty"
				},
				pincode:{
					required:"Pincode can't be Empty",
					minlength:"Pincode Number should have 6 Digits"	,
					number:" Enter Valid Pincode"
				}
				
			}
			
			
	});
	
	$("#clear").click(function(){
		$("input").each(function(){
			$("label.error").remove();
		
		});
	});

});

</script>
 
<style type="text/css">
em {
	color: red;
}
#form {
	align: center;
	height: 350%;
	width: 65%;
	margin-left: 400px;
	margin-top: auto;
}

#btn {
	align: center;
	margin-left: 250px;
}
input.error{
	border: 1px solid red;
}
label.error {
	color: red;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%><br>
	<br>
	<br>
	<br>
	<form class="form-horizontal" action="register.do" id="form" method="post" >
	<p>${name}</p>
		<div class="form-group">
			<label class="col-sm-2 control-label">First Name<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="first_name" class="form-control col-sm-6"
					id="first_name" placeholder="Enter First Name" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Last Name<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="last_name" class="form-control col-sm-6"
					id="last_name" placeholder="Enter Last Name" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="email" name="email" class="form-control col-sm-6"
					id="email" placeholder="Enter Email" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Password<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="password" name="password" class="form-control col-sm-6"
					id="password" placeholder="Enter password" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Mobile<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="mobile" class="form-control col-sm-6"
					id="mobile" placeholder="Enter mobile" required maxlength="10">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Door Number<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="door_no" class="form-control col-sm-6"
					id="door_no" placeholder="Enter Door Number" required maxlength="4">
			</div>
		</div>
			<div class="form-group">
			<label class="col-sm-2 control-label">Street<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="street" class="form-control col-sm-6"
					id="street" placeholder="Enter Street Name" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">City<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="city" class="form-control col-sm-6"
					id="city" placeholder="Enter your city" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">State<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="state" class="form-control col-sm-6"
					id="state" placeholder="State" required>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Pin code<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="pincode" class="form-control col-sm-6"
					id="pincode" placeholder="Enter your pincode" required maxlength="6">
			</div>
		</div>
		<br>
		<br>
		<div class="form-group">
			<div id="btn" class="col-sm-offset-0">
				<input type="submit" class="btn btn-primary" value="Submit">
				<input id="clear" type="reset" class="btn btn-primary" value="Cancel">

			</div>
		</div>


	</form>

	<%@ include file="footer.jsp"%>
</body>
</html>