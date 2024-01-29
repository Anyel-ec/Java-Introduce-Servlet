<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Detalles del Auto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Detalles del Auto</h2>

    <c:if test="${not empty autoEncontrado}">
        <div class="card">
            <div class="card-body">
                <p class="card-text">Marca: ${autoEncontrado.marca}</p>
                <p class="card-text">Modelo: ${autoEncontrado.modelo}</p>
                <p class="card-text">Placa: ${autoEncontrado.placa}</p>
                <!-- Agrega aquí los demás campos del objeto Auto -->
            </div>
        </div>
    </c:if>

    <c:if test="${empty autoEncontrado}">
        <div class="alert alert-warning" role="alert">
            No se encontró un auto con la placa especificada.
        </div>
    </c:if>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
