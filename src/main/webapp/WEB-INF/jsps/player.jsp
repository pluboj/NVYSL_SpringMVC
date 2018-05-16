<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sharks - Player</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value="css/main.css" />" rel="stylesheet">
<link href="<c:url value="css/player.css" />" rel="stylesheet">
</head>
<body>
	<div class="container main-graphic">
		<p>
			<a href="<spring:url value="displayTeam" />"
				class="btn btn-default"> <span
				class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</p>
	
		<jsp:include page="page-header.jsp"></jsp:include>
		
		<div class="main main-nav">
			<div class="panel panel-default">
				<div class="panel-heading">
				    <h3 class="panel-title">Player's Profile</h3>
				</div> <!-- panel-heading -->
				<div class="panel-body">
					<c:if test="${not empty player}">
					    <div class="thumbnail">
							<img class="img-responsive" src="<c:url value="/img/player_img.png"></c:url>" alt="player profile image" style="width:30; height:30"/>
						</div> <!-- thumbnail -->
						
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon3">Number: </span>
							<input type="text" class="form-control pipein" readonly value="${player.playerNumber}" aria-describedby="sizing-addon3">
						</div>
						<br>
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon1">First Name: </span>
							<input type="text" class="form-control pipein" readonly value="${player.firstName}" aria-describedby="sizing-addon1">
						</div>
						<br>
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon2">Last Name: </span>
							<input type="text" class="form-control pipein" readonly value="${player.lastName}" aria-describedby="sizing-addon2">
						</div>
						<br>
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon4">Position: </span>
							<input type="text" class="form-control pipein" readonly value="${player.position}" aria-describedby="sizing-addon4">
						</div>
						<br>
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon5">Height: </span>
							<input type="text" class="form-control pipein" readonly value="${player.height}" aria-describedby="sizing-addon5">
						</div>
						<br>
						<div class="input-group input-group-lg">
							<span class="input-group-addon" id="sizing-addon6">Games Played: </span>
							<input type="text" class="form-control pipein" readonly value="${games}" aria-describedby="sizing-addon6">
						</div>
						<br>
						<div>
							<label>Download data</label> (open data in new tab)
							<br>
							<a class="btn btn-default" href="<spring:url value="player.xml?id=${player.playerNumber}"/>" 
									target="_blank" role="button">Xml</a>
							
								<a class="btn btn-default" href="<spring:url value="player.json?id=${player.playerNumber}"/>" 
									target="_blank" role="button">Json</a>
						</div>
					</c:if>	
					<c:if test="${empty player}"><h3>No Player Found</h3></c:if>	
				</div> <!-- panel-body -->
			</div> <!-- panel panel-default -->
			
		
		</div> <!-- main -->
		<p>
			<a href="<spring:url value="displayTeam" />"
				class="btn btn-default"> <span
				class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</p>
	</div> <!-- container -->
</body>
</html>