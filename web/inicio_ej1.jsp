<%-- 
    Document   : inicio_ej1
    Created on : 14 set. 2026, 7:59:55 p. m.
    Author     : Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Promedio Ponderado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow mx-auto" style="max-width: 500px;">
            <div class="card-header bg-primary text-white">
                <h4 class="mb-0">Cálculo de Promedio Ponderado</h4>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/SvPromedio" method="post">
                    <div class="mb-3">
                        <label class="form-label"> Nota 1 (20%)
                        </label>
                        <input type="number"
                               name="nota1"
                               class="form-control"
                               min="0"
                               max="20"
                               step="0.01"
                               required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label"> Nota 2 (30%)
                        </label>
                        <input type="number"
                               name="nota2"
                               class="form-control"
                               min="0"
                               max="20"
                               step="0.01"
                               required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label"> Nota 3 (50%)
                        </label>
                        <input type="number"
                               name="nota3"
                               class="form-control"
                               min="0"
                               max="20"
                               step="0.01"
                               required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">
                        Calcular promedio
                    </button>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
