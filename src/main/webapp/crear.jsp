<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
  <title>Añadir Auto</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
  <h1 class="text-center mb-4">Datos del Auto</h1>
  <div class="form-container">
    <form action="servletController" method="post">
      <input type="hidden" name="opcion" value="crear">
      <table class="table">
        <tr>
          <td>Marca</td>
          <td><input type="text" name="marca" class="form-control"></td>
        </tr>
        <tr>
          <td>Placa</td>
          <td><input type="text" name="placa" class="form-control"></td>
        </tr>
        <tr>
          <td>Modelo</td>
          <td><input type="text" name="modelo" class="form-control"></td>
        </tr>
        <tr>
          <td>Cilindraje</td>
          <td><input type="text" name="cilindraje" class="form-control"></td>
        </tr>
        <tr>
          <td>Año</td>
          <td><input type="text" name="anio" class="form-control"></td>
        </tr>
        <tr>
          <td>Consumo</td>
          <td><input type="text" name="consumo" class="form-control"></td>
        </tr>
      </table>
      <div class="text-center mt-3">
        <input type="submit" value="Añadir" class="btn btn-primary">
      </div>
    </form>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
