<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar/Actualizar un Animal</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
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

<body>
	
	<header>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a href="<c:url value='/' />" class="navbar-brand"> <i class="fas fa-paw"></i>
						SANTOCAN
					</a>
				</div>
			</div>
		</div>
	</header>
<div class="mainWrapper">
		<div class="login-container">
			<div class="login-card">
				<div class="login-form">
					<h1>
						<span><c:choose>
								<c:when test="${edit}">
							Actualizar animal
						</c:when>
								<c:otherwise>
							Crear animal
						</c:otherwise>
							</c:choose></span>
					</h1>
		<form:form method="POST" modelAttribute="animal"
			class="form-horizontal">
			<form:input type="hidden" path="animalId" id="id" />

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Nombre</label>
					<div class="col-md-7">
						<form:input type="text" path="name" id="firstName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="name" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="type">Tipo</label>
					<div class="col-md-7">

						<form:select path="type"  class="form-control" id="sel1">
							<option value="Perro">Perro</option>
							<option value="Gato">Gato</option>
						</form:select>

						<div class="has-error">
							<form:errors path="type" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="breed">Raza</label>
					<div class="col-md-7">
						<form:input type="text" path="breed" id="lastName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="breed" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="description">Descripción</label>
					<div class="col-md-7">
						<form:input type="text" path="description" id="lastName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="description" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="imageUrl">Url Imagen</label>
					<div class="col-md-7">
						<form:input type="text" path="imageUrl" 
							class="form-control input-sm" />
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Actualizar"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/animals' />">Cancelar</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Registrar"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/animals' />">Cancelar</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
		</div>
			</div>
		</div>
	</div>
</body>