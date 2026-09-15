<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Resultado del Promedio</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow mx-auto" style="max-width: 550px;">
            <div class="card-header bg-primary text-white">
                <h4 class="mb-0">Resultado del Promedio</h4>
            </div>
            <div class="card-body">
                <h5>Notas ingresadas</h5>
                <ul class="list-group mb-4">
                    <li class="list-group-item">
                        Nota 1 (20%): ${nota1}
                    </li>
                    <li class="list-group-item">
                        Nota 2 (30%): ${nota2}
                    </li>
                    <li class="list-group-item">
                        Nota 3 (50%): ${nota3}
                    </li>
                </ul>
                <h4>
                    Promedio final:
                    ${promedio}
                </h4>
                <br>
                <c:if test="${estado == 'Aprobado'}">
                    <div class="alert alert-success">
                        Estado: ${estado}
                    </div>
                </c:if>
                <c:if test="${estado == 'Desaprobado'}">
                    <div class="alert alert-danger">
                        Estado: ${estado}
                    </div>
                </c:if>
                <a href="inicio_ej1.jsp"
                   class="btn btn-secondary w-100">
                    Calcular nuevamente
                </a>
            </div>
        </div>

    </div>

</body>
</html>