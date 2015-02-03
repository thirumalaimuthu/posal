<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thankyou</title>
<style type="text/css">
#thankyou_page{
	align:center;
}
#logout{
margin-top:10px;
	margin-left: 90%;
}

</style>
</head>

<body>
<%@ include file="header.jsp" %>
	<form  class="form-horizontal" action="logout" id="thankyou_page"> 
	<h4><a id="logout" type="button" href="logout">Logout</a></h4>
	<div align="center" id=thankyou_page>
		<h2>Hi <p> ${details.fname}  </p> Thanks for Using this<br></h2><br>
		<h3>We will send It in this Address</h3>
		<textarea readonly="readonly" rows="8" cols="56">
		${details.doorno }  ${details.street },
		${details.city },
		${details.state }
		</textarea>
		</div>
		<div align="center">
		<h2>Thank you. Have a Nice Day</h2>
		</div>
	</form>
<%@ include file="footer.jsp" %>

</body>
</html>