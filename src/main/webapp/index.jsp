<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Administrar Auto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<div class="container mt-5">
    <h1 class="text-center mb-4">Lista de Autos</h1>
    <div class="text-center mb-3">
        <a href="servletController?opcion=registro" class="btn btn-primary">Añadir Auto</a>
    </div>
    <form action="servletController" method="get" class="mb-3">
        <input type="hidden" name="opcion" value="buscar">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Buscar por placa" name="placa">
            <button class="btn btn-outline-secondary" type="submit">Buscar</button>
        </div>
    </form>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Placa</th>
            <th>Cilindraje</th>
            <th>Año</th>
            <th>Consumo</th>
            <th colspan="2">Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="auto" items="${autos}">
            <tr>
                <td><c:out value="${auto.marca}"></c:out></td>
                <td><c:out value="${auto.modelo}"></c:out></td>
                <td><c:out value="${auto.placa}"></c:out></td>
                <td><c:out value="${auto.cilindraje}"></c:out></td>
                <td><c:out value="${auto.anio}"></c:out></td>
                <td><c:out value="${auto.consumo}"></c:out></td>
                <td><a href="servletController?opcion=actualizar&placa=<c:out value="${auto.placa}"></c:out>" class="btn btn-warning">Editar</a></td>
                <td><a href="servletController?opcion=eliminar&placa=<c:out value="${auto.placa}"></c:out>" class="btn btn-danger">Eliminar</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
