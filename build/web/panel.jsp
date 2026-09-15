<%-- 
    Document   : panel
    Created on : 14 set. 2026, 9:11:30 p. m.
    Author     : Victor
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow mx-auto" style="max-width: 550px;">
            <div class="card-header bg-success text-white">
                <h3 class="mb-0">Panel Principal</h3>
            </div>
            <div class="card-body text-center">
                <h4 class="mb-3">
                    ¡Bienvenido, ${sessionScope.usuarioLogueado}!
                </h4>
                <p class="text-muted">
                    Has iniciado sesión correctamente.
                </p>
                <a href="login.jsp"
                   class="btn btn-danger">
                    Cerrar sesión
                </a>
                
            </div>

        </div>

    </div>

</body>
</html>
