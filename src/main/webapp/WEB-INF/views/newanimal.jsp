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
<title>Registrar un Animal</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">

		<div class="well lead">Añadir un nuevo Animal</div>
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
					<label class="col-md-3 control-lable" for="breed">Breed</label>
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
					<label class="col-md-3 control-lable" for="description">Description</label>
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
						<div class="has-error">
							<form:errors path="description" class="help-inline" />
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/list' />">Cancel</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/list' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>