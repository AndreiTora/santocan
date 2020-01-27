<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicia sesión</title>
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

	<div id="mainWrapper">
		<div class="login-container">
		<h1>
					 <span>Inicia</span> Sesión
				</h1>
				</p>
					<div class="element">
						<div class="sub-element sincuenta">¿No tienes una cuenta todavía con nosotros?</div>
						<div class="sub-element sincuenta"><a href="<c:url value='/newuser' />">¡Registrate!</a></div>
					</div>
			<div class="login-card">
				<div class="login-form">
					<c:url var="loginUrl" value="/login" />
					<form action="${loginUrl}" method="post" class="form-horizontal">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Usuario y/o contraseña inválidos.</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>Has cerrado sesión exitosamente.</p>
							</div>
						</c:if>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="username"><i
								class="fa fa-user"></i></label> <input type="text" class="form-control"
								id="username" name="ssoId" placeholder="Introduce el nombre de usuario" required>
						</div>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="password"><i
								class="fa fa-lock"></i></label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Introduce la contraseña" required>
						</div>
						<div class="input-group input-sm">
							<div class="checkbox">
								<label><input type="checkbox" id="rememberme"
									name="remember-me">Recuérdame</label>
							</div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

						<div class="form-actions  text-center">
							<input type="submit"
								class="btn btn-default" id="registrate" value="Log in">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>