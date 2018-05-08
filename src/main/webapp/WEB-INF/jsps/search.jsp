<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
			 Find Player
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