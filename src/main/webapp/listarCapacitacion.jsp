<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
	<link rel="stylesheet" href="css/styles.css">
<title>Listar Capacitaci�n</title>
</head>
<body class="fondoCapacitacion">
	<jsp:include page="navbarCliente.jsp" />
	<h1 class="text-center">Listar Capacitaciones</h1>


	   <div class="container">
        <h2>Llena los siguientes campos para listar las capacitaciones requeridas.</h2>
        <form id="capacitacionForm" class="fondoFormularioCapacitacion">
            <div class="mb-3">
                <label for="capacitacionId" class="form-label">Id capacitaci�n/opcional</label>
                <input type="text" class="form-control" id="capacitacionId" name="capacitacionId">
            </div>
            <div class="mb-3">
                <label for="fechaCapacitacion" class="form-label">Fecha de realizaci�n</label>
                <input type="date" class="form-control" id="fechaCapacitacion" name="fechaCapacitacion">
            </div>
            <div class="mb-3">
                <label for="lugarCapacitacion" class="form-label">Lugar de realizaci�n</label>
                <input type="text" class="form-control" id="lugarCapacitacion" name="lugarCapacitacion">
            </div>
            <div class="mb-3">
                <button type="button" class="btn btn-primary" onclick="listarCapacitaciones()">Listar capacitaciones</button>
            </div>
        </form>
        <div id="listaCapacitaciones"></div>
    </div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>