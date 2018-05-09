<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sharks - Team</title>

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
		<div class="main">
			<p class="lead"><strong>Coach: </strong>Tim Jones</p>
			<p class="lead"><strong>Assistant Coach: </strong>Rebeca Brown</p>
		</div>
		<hr>
		<div class="main main-nav">
			<c:if test="${not empty players}">
				<table class="table table-bordered">
					<caption>Goalkeepers</caption>
					<thead>
						<tr>
							<th class="pnum">#</th>
							<th>Name</th>
							<th>Year of Birth</th>
							<th>Ht</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${players}" var="player">
							<c:if test="${player.position.equalsIgnoreCase('Goalkeeper')}">
								<tr>
									<td class="pnum pname"><c:out value="${player.playerNumber}"></c:out></td>
									<td class="pname">
										<a href=" <spring:url value="player?id=${player.playerNumber}" /> ">
											<c:out value="${player.firstName} ${player.lastName}"></c:out>
										</a>
									</td>
									<td><c:out value="${player.yearBorn}"></c:out></td>
									<td><c:out value="${player.height}"></c:out></td>
								</tr>
							</c:if>					
						</c:forEach>
					</tbody>
				</table>
				
				<table class="table table-bordered">
					<caption>Defenders</caption>
					<thead>
						<tr>
							<th class="pnum">#</th>
							<th>Name</th>
							<th>Year of Birth</th>
							<th>Ht</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${players}" var="player">
							<c:if test="${player.position.equalsIgnoreCase('Defender')}">
								<tr>
									<td class="pnum pname"><c:out value="${player.playerNumber}"></c:out></td>
									<td class="pname">
										<a href=" <spring:url value="player?id=${player.playerNumber}" /> ">
											<c:out value="${player.firstName} ${player.lastName}"></c:out>
										</a>
									</td>
									<td><c:out value="${player.yearBorn}"></c:out></td>
									<td><c:out value="${player.height}"></c:out></td>
								</tr>
							</c:if>					
						</c:forEach>
					</tbody>
				</table>
				
				<table class="table table-bordered">
					<caption>Midfielders</caption>
					<thead>
						<tr>
							<th class="pnum">#</th>
							<th>Name</th>
							<th>Year of Birth</th>
							<th>Ht</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${players}" var="player">
							<c:if test="${player.position.equalsIgnoreCase('Midfielder')}">
								<tr>
									<td class="pnum pname"><c:out value="${player.playerNumber}"></c:out></td>
									<td class="pname">
										<a href=" <spring:url value="player?id=${player.playerNumber}" /> ">
											<c:out value="${player.firstName} ${player.lastName}"></c:out>
										</a>
									</td>
									<td><c:out value="${player.yearBorn}"></c:out></td>
									<td><c:out value="${player.height}"></c:out></td>
								</tr>
							</c:if>					
						</c:forEach>
					</tbody>
				</table>
				
				<table class="table table-bordered">
					<caption>Forwards</caption>
					<thead>
						<tr>
							<th class="pnum">#</th>
							<th>Name</th>
							<th>Year of Birth</th>
							<th>Ht</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${players}" var="player">
							<c:if test="${player.position.equalsIgnoreCase('Forward')}">
								<tr>
									<td class="pnum pname"><c:out value="${player.playerNumber}"></c:out></td>
									<td class="pname">
										<a href=" <spring:url value="player?id=${player.playerNumber}" /> ">
											<c:out value="${player.firstName} ${player.lastName}"></c:out>
										</a>
									</td>
									<td><c:out value="${player.yearBorn}"></c:out></td>
									<td><c:out value="${player.height}"></c:out></td>
								</tr>
							</c:if>					
						</c:forEach>
					</tbody>
				</table>
				
			</c:if>
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