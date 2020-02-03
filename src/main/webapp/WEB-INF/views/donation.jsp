<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página de Donaciones</title>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	rel="stylesheet">
<link href="<c:url value='/static/css/santocan.css' />" rel="stylesheet"></link>
<link href="<c:url value='/static/css/bootstrap.min.css' />"
	rel="stylesheet"></link>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<header>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a href="http://localhost:8080/santocan/" class="navbar-brand"> <i class="fas fa-paw"></i>
						SANTOCAN
					</a>
				</div>
				<nav class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="http://localhost:8080/santocan/#about">NOSOTROS</a></li>
						<li><a href="http://localhost:8080/santocan/#collaborators">COLABORADORES</a></li>
						<li><a href="http://localhost:8080/santocan/#contact">CONTACTO</a></li>
						<li><a href="<c:url value="/animals" />">NUESTROS
								ANIMALES</a></li>
						<sec:authorize access="!isAuthenticated()">
							<li><a href="<c:url value='/login' />">INICIAR SESIÓN</a></li>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<li><a href="<c:url value="/logout" />">CERRAR SESIÓN</a></li>
						</sec:authorize>

					</ul>

				</nav>
			</div>
		</div>
	</header>
	<section id="donations">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<h1>
						Tu <span>donación</span>, su vida.
					</h1>
					<div class="flex-container flexWithBox">
						
						<div class="column">
						<p>En Santocan queremos darles a nuestros animales la mejor vida posible antes de encontrarles un hogar. <b>¿Quieres ayudarnos? ¡DONA!</b> Cualquier ayuda es bien recibida, da igual el importe, pequeños granos de arena siempre acabarán haciendo un castillo.</p>
						<p>Dale al botón y te llevará a la pasarela de pago. Puedes pagar con <b>paypal</b> o <b>con una tarjeta de crédito</b>. </p>
							<form action="https://www.paypal.com/cgi-bin/webscr"
								method="post" target="_top" id="donar">
								<input type="hidden" name="cmd" value="_donations" /> <input
									type="hidden" name="business" value="acgarabito2@gmail.com" />
								<input type="hidden" name="item_name" value="Refugio Santocan" />
								<input type="hidden" name="currency_code" value="EUR" /> <input
									type="image"
									src="https://www.paypalobjects.com/es_ES/ES/i/btn/btn_donateCC_LG.gif"
									border="0" name="submit"
									title="PayPal - The safer, easier way to pay online!"
									alt="Botón Donar con PayPal" /> <img alt="" border="0"
									src="https://www.paypal.com/es_ES/i/scr/pixel.gif" width="1"
									height="1" />
							</form>
							<p>De parte de todos los animalillos a los que tu donación va a ayudar: <b>GRACIAS</b>.</p>
						</div>
					</div>

				</div>
			</div>
	</section>

</body>
</html>