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
<title>Registro de Usuario</title>
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

<body id="registro">

	<header>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a href="<c:url value='/' />" class="navbar-brand"> <i
						class="fas fa-paw"></i> SANTOCAN
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
							Actualizar usuario
						</c:when>
								<c:otherwise>
							Crear usuario
						</c:otherwise>
							</c:choose></span>
					</h1>
					<form:form method="POST" modelAttribute="user"
						class="form-horizontal">
						<form:input type="hidden" path="id" id="id" />

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="ssoId">Nombre
									Usuario</label>
								<div class="col-md-7">
									<c:choose>
										<c:when test="${edit}">
											<form:input type="text" path="ssoId" id="ssoId"
												class="form-control input-sm" disabled="true" />
										</c:when>
										<c:otherwise>
											<form:input type="text" path="ssoId" id="ssoId"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="ssoId" class="help-inline" />
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="firstName">Nombre</label>
								<div class="col-md-7">
									<form:input type="text" path="firstName"
										class="form-control input-sm" />
									<div class="has-error">
										<form:errors path="firstName" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="lastName">Apellido</label>
								<div class="col-md-7">
									<form:input type="text" path="lastName"
										class="form-control input-sm" />
									<div class="has-error">
										<form:errors path="lastName" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="password">Contraseña</label>
								<div class="col-md-7">
									<form:input type="password" path="password" id="password"
										class="form-control input-sm" />
									<div class="has-error">
										<form:errors path="password" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="email">Email</label>
								<div class="col-md-7">
									<form:input type="email" path="email" id="email"
										class="form-control input-sm" />
									<div class="has-error">
										<form:errors path="email" class="help-inline" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
								<div class="col-md-7">
									<form:select path="userProfiles" multiple="true"
										class="form-control input-sm">
										<form:option items="${roles}" itemValue="id" itemLabel="type"
											value="1">USER</form:option>
										<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
											<form:options items="${roles}" itemValue="id"
												itemLabel="type" />
										</sec:authorize>
									</form:select>
									<div class="has-error">
										<form:errors path="userProfiles" class="help-inline" />
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
											href="<c:url value='/list' />">Cancelar</a>
									</c:when>
									<c:otherwise>
										<input type="submit" value="Register"
											class="btn btn-primary btn-sm" /> or <a
											href="<c:url value='/list' />">Cancelar</a>
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
</html>