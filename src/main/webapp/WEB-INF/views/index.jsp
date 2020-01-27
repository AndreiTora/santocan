<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<html>

<head>


<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SANTOCAN: TU REFUGIO</title>
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
					<a href="#" class="navbar-brand"> <i class="fas fa-paw"></i>
						SANTOCAN
					</a>
				</div>
				<nav class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#about">NOSOTROS</a></li>
						<li><a href="#collaborators">COLABORADORES</a></li>
						<li><a href="#contact">CONTACTO</a></li>
						<li><a href="#ouranimals">NUESTROS ANIMALES</a></li>
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
	<sec:authorize access="isAuthenticated()">
		<div class="profile-card">
			<div class="profile-card-box">
				<h4>
					<br> <i class="fas fa-user"></i><br>Perfil de Usuario
				</h4>
				<p>
					<strong>${loggedinuser}</strong>
				</p>

			</div>
		</div>
	</sec:authorize>

	<div class="icon-bar">
		<a href="#" class="facebook"><i class="fab fa-facebook-square"></i></a>
		<a href="#" class="twitter"><i class="fab fa-twitter"></i></a> <a
			href="#" class="linkedin"><i class="fab fa-linkedin"></i></a> <a
			href="#" class="youtube"><i class="fab fa-youtube"></i></a>
	</div>



	<section id="home">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<p>
					<h1>
						<span>SANTOCAN</span>, más que un refugio: una <span>familia</span>.
					</h1>
					</p>
					<div class="element">
						<div class="sub-element">Ayúdanos a conseguir que nuestros
							animales vivan cada vez mejor. ¡Colabora, dona, aporta, comparte!
							Cualquier granito de arena hará que su vida sea un poquito mejor.</div>
						<a href="#about" class="btn btn-default">HACER DONACIÓN</a>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section id="about">
		<div class="container">
			<div class="row">
				<h1>
					Sobre <span>nosotros</span>
				</h1>

				<div class="col-md-offset-2 col-md-8">

					<div class="element">
						<div class="flex-container myFlex">
							<div class="column">
								<h2>
									<i class="fas fa-paw"></i> ¿Quienes somos?
								</h2>
								<p>Santocan nacó en 2020 con la idea de dar un refugio a
									todos esos perros y gatos que no han tenido la suerte de
									encontrar un hogar todavía.</p>
								<p>Nos financiamos mediante donaciones altruistas y la
									mayoría de nuestros trabajadores son voluntarios amantes de los
									animales.</p>
								<p>Siempre nos esforzamos para que nuestros animales tengan
									la mejor calidad posible y reciban todo el amor y cariño que se
									merecen. Por ello, hacemos jornadas con niños pequeños para
									realizar juegos en grupo con los perros y gatos.</p>
							</div>
							<div class="column">
								<h2>
									<i class="fas fa-paw"></i> Encuéntranos
								</h2>
								<p>+34 689 52 36 41</p>
								<p>+34 981 29 67 05</p>
								<p>Calle Pezuña, 22, A Coruña 15171</p>
								<p>¿Quieres contactar directamente con nosotros?</p>
								<p>
									¡Pulsa <a href="#contact">aquí</a> para llegar al formulario de
									contacto! Siempre respondemos con la mayor rapidez y
									cordialidad. Estaremos encantados de responder tus dudas sobre
									lo que necesites.
								</p>
								<P>También, te animamos a que nos escribas sin motivo
									alguno, un comentarios amable siempre alienta a nuestros
									voluntarios.</p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<section id="collaborators">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<h1>
						<span>Conoce</span> a nuestros <span>Colaboradores</span>
					</h1>
					<div class="flex-container flexWithBox">
						<div class="column">
							<h2>
								<i class="fas fa-paw"></i> <br>Veterinarios
							</h2>

							<ul>
								<li><a href="https://www.hospitalveterinarioabeiro.com/">Hospital
										Veterinario Abeiro</a></li>
								<li><a href="http://www.elarcaveterinaria.es/">El Arca
										Veterinaria</a></li>
								<li><a href="https://cvcanis.com/">Clínicas Vet. CANIS</a></li>
								<li><a href="http://www.cirugiaveterinaria.es/">Centro
										A Chico</a></li>
								<li><a href="http://www.nosveterinarios.es/">Nos:
										Centro Veterinario</a></li>
							</ul>
						</div>
						<div class="column">
							<h2>
								<i class="fas fa-paw"></i> <br>Tiendas
							</h2>
							<ul>
								<li><a href="https://www.kiwoko.com/">Kiwoko</a></li>
								<li><a href="https://www.tiendanimal.es/">Tiendanimal</a></li>
								<li><a href="https://mascotak.negocio.site/">Mascotak</a></li>
								<li><a href="http://lucana.es/">Lucana Alimentación</a></li>
								<li><a href="http://www.petspace.es/">Pet Space</a></li>
							</ul>
						</div>

						<div class="column">
							<h2>
								<i class="fas fa-paw"></i> <br>Otros
							</h2>
							<ul>
								<li><a href="https://www.dacoruna.gal/portada/">Deputación
										Provincial de Coruña</a></li>
								<li><a href="https://www.xunta.gal/portada">Xunta de
										Coruña</a></li>
								<li><a href="https://www.miteco.gob.es/es/">Ministerio
										de Transición Ecológica de España</a></li>
								<li><a href="https://pacma.es/">PACMA</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
	</section>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<p>
					<h1>
						<span>Contacto</span>
					</h1>
					</p>
					<div class="element">
						<p>En Santocan nos encanta que las personas nos acribillen a
							dudas, preguntas y comentarios positivos de gente tan simpática
							como tú.</p>
						<p>¡No seas tímido, que aquí no muerde nadie! Bueno, quizá
							algún perrete si lo molestas, pero es comprensible, ¿no? Anímate.</p>
						<div class="flex-container flexWithBox">
							<form id="contact-form" action="mailto:contacto@santocan.com"
								method="get" enctype="text/plain">
								<div class="col-md-6 col-sm-6">
									<input type="text" class="form-control" name="name"
										placeholder="Nombre" required>
								</div>
								<div class="col-md-6 col-sm-6">
									<input type="email" class="form-control" name="email"
										placeholder="Email" required>
								</div>
								<div class="col-md-12 col-sm-12">
									<textarea class="form-control" rows="5" name="message"
										placeholder="Mensaje" required></textarea>
								</div>
								<div class="col-md-offset-8 col-md-4 col-sm-offset-6 col-sm-6">
									<button id="submit" type="submit" class="form-control"
										name="submit">Enviar Mensaje</button>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


</body>

</html>