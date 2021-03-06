<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NVYSL-Sharks</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value="css/main.css" />" rel="stylesheet">
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		
		<div class="main main-nav">
			<a href="<spring:url value="displayTeam" />">
				<button type="button" class="btn btn-default btn-lg btn-block btn-success">Team</button>
			</a><br>
			<a href="<spring:url value="search" />">
				<button type="button" class="btn btn-default btn-lg btn-block btn-success">Find Player</button>
			</a><br>
			<a href="<spring:url value="contact" />">
				<button type="button" class="btn btn-default btn-lg btn-block btn-info">Contact Us</button>
			</a><br>
		</div>
	</div>
</body>
</html>