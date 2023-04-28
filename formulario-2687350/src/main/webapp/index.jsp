<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Shirly Morales">
    <meta name="description" content="Crea una cuenta o inicia sesión con nosotros y disfruta de esta gran experiencia con SONGOKU.">
    <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registro De Usuario .:. SONGOKU</title>
    <link rel="icon" type="image/x-icon" href="./img/descarga.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./css/signin.css">
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
          <img class="mb-4" src="./img/descarga.png" alt="SONGOKU" width="100">
          <h4 class="text-secondary">SONGOKU</h4>
          <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

    <div class="form-floating">
        <input type="text" class="form-control" id="floatingInput"
           placeholder="Ingrese su nombre de usuario" required autofocus
           pattern="[A-za-z0-9]{8,12}">
        <label for="floatingInput">Usuario:</label>
    </div>

    <div class="form-floating">
        <input type="password" class="form-control" id="floatingPassword"
               placeholder="Ingrese su contraseña" required
               pattern="[A-za-z0-9]{8,12}">
        <label for="floatingPassword">Contraseña:</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>


    <div id="register">
        <a href="jsp/form.jsp">Registrarse</a>

    </div>

    <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados SONGOKU
      <%=displayDate()%>
    </p>

    </form>
</main>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


<%!
    public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>
</div>
</body>
</html>
