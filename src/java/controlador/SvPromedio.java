package controlador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "SvPromedio", urlPatterns = {"/SvPromedio"})
public class SvPromedio extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        double nota1 = Double.parseDouble(request.getParameter("nota1"));
        double nota2 = Double.parseDouble(request.getParameter("nota2"));
        double nota3 = Double.parseDouble(request.getParameter("nota3"));

        double promedio = (nota1 * 0.20)
                        + (nota2 * 0.30)
                        + (nota3 * 0.50);
        
        String estado;

        if (promedio >= 11) {
            estado = "Aprobado";
        } else {
            estado = "Desaprobado";
        }

        request.setAttribute("nota1", nota1);
        request.setAttribute("nota2", nota2);
        request.setAttribute("nota3", nota3);
        request.setAttribute("promedio", promedio);
        request.setAttribute("estado", estado);

        request.getRequestDispatcher("/resultado.jsp")
               .forward(request, response);
    }
}