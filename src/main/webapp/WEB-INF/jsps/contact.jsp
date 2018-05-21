<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sharks - ContactUs</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value="css/main.css" />" rel="stylesheet">
</head>
<body>
	<div class="container main-graphic">
		<p>
			<a href="<spring:url value="/" />"
				class="btn btn-default"> <span
				class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</p>
	
		<jsp:include page="page-header.jsp"></jsp:include>
		<hr>
		<div class="main main-nav">
		
			<h3>Contact Us</h3>
			 
			 <!-- TODO:PL - GET needs to be changed to POST -->
			 <form method="GET" action="processContact">
			 
			 	<div class="form-group">
			 		<label for="name" class="col-sm-2 control-label">Name</label>
				    <input type="name" name="name" class="form-control" id="name" placeholder="Name">   
			 	</div>
			 
			 	<div class="form-group">
			 		<label for="email" class="col-sm-2 control-label">Email</label>
				    <input type="email" name="email" class="form-control" id="email" placeholder="Email">
			 	</div>
			 	
			 	<div class="form-group">
			 		<label for="phone" class="col-sm-2 control-label">Phone</label>
				    <input type="text" name="phone" class="form-control" id="phone" placeholder="#">   
			 	</div>
			 	
			 	<div class="form-group">
			 	<label for="message" class="col-sm-2 control-label">Message</label>
			      <textarea id="message"  name="message" class="form-control" rows="5"></textarea>
			  </div>
			  
			   <button type="submit" class="btn btn-default">Submit</button>
			   
			 </form>
			 
		</div> <!-- main -->
		<p>
			<a href="<spring:url value="/" />"
				class="btn btn-default"> <span
				class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</p>
	</div> <!-- container -->
</body>
</html>