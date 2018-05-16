<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sharks - Search</title>

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
			 <h3>Find Player</h3>
			 <hr>
			 
			 <form method="GET" action="player" class="navbar-form navbar-left">
			 	<div class="form-group input-group input-group-lg">
			 		<span class="input-group-addon" id="sizing-addon1">Player #</span>
				    <input type="number" id="id" name="id" class="form-control" aria-describedby="sizing-addon1" />
				</div>
				<button type="submit" class="btn btn-default btn-lg">Submit</button>
			 </form>
			 <br>
			 
		</div> <!-- main -->
		<br>
		<p>
			<a href="<spring:url value="/" />"
				class="btn btn-default"> <span
				class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</p>
	</div> <!-- container -->
</body>
</html>