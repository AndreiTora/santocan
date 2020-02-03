<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de Uusarios</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<link href="<c:url value='/static/css/santocan.css' />"
	rel="stylesheet"></link>
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
					<a href="<c:url value='/' />" class="navbar-brand"> <i class="fas fa-paw"></i>
						SANTOCAN
					</a>
				</div>
				<nav class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="http://localhost:8080/santocan/#about">NOSOTROS</a></li>
						<li><a href="http://localhost:8080/santocan/#collaborators">COLABORADORES</a></li>
						<li><a href="http://localhost:8080/santocan/#contact">CONTACTO</a></li>
						<li><a href="http://localhost:8080/santocan/animals">NUESTROS ANIMALES</a></li>
						<sec:authorize access="!isAuthenticated()"><li><a href="<c:url value='/login' />">INICIAR SESIÓN</a></li></sec:authorize>
						<sec:authorize access="isAuthenticated()"><li><a href="<c:url value="/logout" />">CERRAR SESIÓN</a></li></sec:authorize>

					</ul>
					
				</nav>
			</div>
		</div>
	</header>

	<div class="generic-container" id="containerUsuarios">
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Lista de Usuarios</span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Nombre</th>
				        <th>Apellido</th>
				        <th>Email</th>
				        <th>Usuario</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100"></th>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.ssoId}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">Editar</a></td>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">Borrar</a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		<sec:authorize access="hasRole('ADMIN') ">
		 	<div class="well">
		 		<a href="<c:url value='/newuser' />">Añadir usuario nuevo</a>
		 	</div>
	 	</sec:authorize>
   	</div>
</body>
</html>