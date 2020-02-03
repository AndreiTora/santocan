<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de Animal</title>

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

<body>
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
  
  <div class="row">
  <div class="col-md-2">&nbsp;</div>
  <div class="col-md-8">
    <div class="row space-16">&nbsp;</div>
    <div class="row">
    <c:forEach items="${animals}" var="animal">
      <div class="col-sm-4">
        <div class="thumbnail">
          <div class="caption text-center">
            <div class="position-relative">
              <img src="${animal.imageUrl}" style="width:250px;height:200px;" />
            </div>
            <h4 id="thumbnail-label">${animal.name}</h4>
            <p><i class="glyphicon glyphicon-user light-red lighter bigger-120"></i>&nbsp${animal.type} | ${animal.breed}</p>
            <div class="thumbnail-description smaller">${animal.description}</div>
          </div>
          <div class="caption card-footer text-center">
            <ul class="list-inline">
              <li>&nbsp;<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-animal-${animal.animalId}' />" class="btn btn-success custom-width">Editar</a></td>
				        </sec:authorize></li>
              <li></li>
              <li><a href="#">&nbsp; <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/delete-animal-${animal.animalId}' />" class="btn btn-danger custom-width">Borrar</a></td>
        				</sec:authorize></a></li>
            </ul>
          </div>
        </div>
      </div>
      	</c:forEach>
    </div>
    <div class="col-md-2">&nbsp;</div>
  </div>
	    		
		<sec:authorize access="hasRole('ADMIN') ">
		 	<div>
		 		<a href="<c:url value='animals/new' />">Añadir animal nuevo</a>
		 	</div>
	 	</sec:authorize>
   
</body>
</html>