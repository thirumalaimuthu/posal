<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
<link rel="stylesheet" href="css/jquery-ui.css">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>



<script type="text/javascript">
	$(function() {
		
		$.validator.addMethod("lettersonly",function(value,element){
			return this.optional(element)||/^[a-z]+$/i.test(value);
			},"Enter Only Letters without Space");
		
		
			$("#landing_page").validate({
				rules:{
					product_name:{
						
						required:true,
						lettersonly:true
					},
					weight:{
						number:true,
						required:true
					},
					date:{
						required:true
					}
				},
				messages:{
					product_name:{
						required:"Product name can't be Empty"
					},
					weight:{
						required:"Weight can't be Empty"
					},
					date:{
						required:"Date can't be Empty"
					}
				}
				
			});
		
		$("#datepicker").datepicker({
			changeMonth:true,
			changeYear:true,
			dateFormat:"dd-mm-yy",
			yearRange:"+0:+10",
			minDate:new Date()
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

h3 {
	color: white;
}

#landing_page {
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
#logout{
	margin-left: 800px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%><br>
	<br>
	<br>
	<br>
	<form class="form-horizontal" action="display" id="landing_page" method="post" >
	
	
		<h3 align="center"><p>Welcome ${details.fname }</h3></p><br><br>
		<div class="form-group">
			<label class="col-sm-2 control-label">Product Name<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="product_name" class="form-control col-sm-6" 
					id="product_name" placeholder="Enter Product Name" required>
			</div>
		</div>
	<div class="form-group">
			<label class="col-sm-2 control-label">Product Weight<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="weight" class="form-control col-sm-6"
					id="weight" placeholder="Enter the Product Weight" required maxlength="3"><br><br>
					<label class="col-sm-5 control-label">Select Type<em>*</em>
			</label>
					<select id="options">Select Type
						<option selected="selected">select here</option>
						<option value="gm">Gram</option>
						<option value="Kg">Kilogram</option>
					</select>
			</div>
		</div> 
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label">Date<em>*</em>
			</label>
			<div class="col-sm-6">
				<input type="text" name="date" class="form-control col-sm-6"
					id="datepicker" placeholder="Select The date" required>
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
	<br>
	<br>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>