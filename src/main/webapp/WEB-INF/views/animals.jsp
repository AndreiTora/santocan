<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Animales</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<link href="<c:url value='/static/css/santocan.css' />" rel="stylesheet"></link>
<link href="<c:url value='/static/css/bootstrap.min.css' />"
	rel="stylesheet"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	rel="stylesheet">
</head>

<body id="userlist">
	<header>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a href="<c:url value='/' />" class="navbar-brand"> <i
						class="fas fa-paw"></i> SANTOCAN
					</a>
				</div>
				<nav class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#about">NOSOTROS</a></li>
						<li><a href="#collaborators">COLABORADORES</a></li>
						<li><a href="#contact">CONTACTO</a></li>
						<li><a href="#ouranimals">NUESTROS ANIMALES</a></li>
						<sec:authorize access="!isAuthenticated()">
							<li><a href="<c:url value='/login' />">INICIAR SESI�N</a></li>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<li><a href="<c:url value="/logout" />">CERRAR SESI�N</a></li>
						</sec:authorize>

					</ul>

				</nav>
			</div>
		</div>
	</header>

	<div class="generic-container" id="containerUsuarios">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Lista de Animales</span>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Tipo</th>
						<th>Raza</th>
						<th>Descripci�n</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach items="${animals}" var="animal">
						<tr>
							<td>${animal.name}</td>
							<td>${animal.type}</td>
							<td>${animal.breed}</td>
							<td>${animal.description}</td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
</body>
</html>