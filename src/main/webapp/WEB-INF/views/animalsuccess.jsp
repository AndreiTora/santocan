<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Animal Bien creado</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
	<div class="generic-container">
		
		<div class="alert alert-success lead">
	    	Tu animal se ha registrado correctamente. 
		</div>
		
		<span class="well floatRight">
			Ve a la <a href="<c:url value='/animals' />">lista de animales</a> para comprobarlo
		</span>
	</div>
</body>

</html>