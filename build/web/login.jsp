<%-- 
    Document   : login
    Created on : 14 set. 2026, 9:07:20 p. m.
    Author     : Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow mx-auto" style="max-width: 450px;">
            <div class="card-header bg-primary text-white text-center">
                <h3 class="mb-0">Iniciar Sesión</h3>
            </div>
            <div class="card-body">                
                <c:if test="${not empty error}">
                    <div class="alert alert-danger">
                        ${error}
                    </div>
                </c:if>
                <form action="${pageContext.request.contextPath}/SvLogin"
                      method="post">
                    <div class="mb-3">
                        <label class="form-label">Usuario</label>
                        <input type="text"
                               name="txtUsuario"
                               class="form-control"
                               required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Contraseña</label>
                        <input type="password"
                               name="txtPassword"
                               class="form-control"
                               required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">
                        Ingresar
                    </button>
                </form>
            </div>
        </div>

    </div>

</body>
</html>