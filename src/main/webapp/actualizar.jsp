<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
  <title>Actualizar Auto</title>
  <!-- Agrega los enlaces a los archivos CSS de Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<div class="container mt-5">
  <h1 class="text-center"> Editar el Auto </h1>
  <form action="servletController" method="post">
    <input type="hidden" name="opcion" value="actualizar">
    <table class="table">
      <tr>
        <td>Marca</td>
        <td><input type="text" name="marca" value="${auto.marca}" class="form-control"></td>
      </tr>
      <tr>
        <td>Placa</td>
        <td><input type="text" name="placa" value="${auto.placa}" class="form-control"></td>
      </tr>
      <tr>
        <td>Modelo</td>
        <td><input type="text" name="modelo" value="${auto.modelo}" class="form-control"></td>
      </tr>
      <tr>
        <td>Cilindraje</td>
        <td><input type="text" name="cilindraje" value="${auto.cilindraje}" class="form-control"></td>
      </tr>
      <tr>
        <td>Año</td>
        <td><input type="text" name="anio" value="${auto.anio}" class="form-control"></td>
      </tr>
      <tr>
        <td>Consumo</td>
        <td><input type="text" name="consumo" value="${auto.consumo}" class="form-control"></td>
      </tr>
    </table>
    <div class="text-center mt-3">
      <input type="submit" value="Actualizar" class="btn btn-primary">
    </div>
  </form>
</div>

<!-- Agrega los enlaces a los archivos JS de Bootstrap si es necesario -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
