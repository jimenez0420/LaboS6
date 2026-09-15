package controlador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 *
 * @author Victor
 */

@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("txtUsuario");
        String password = request.getParameter("txtPassword");

        if ("admin".equals(usuario) &&
            ("12354".equals(password) || "utp2026".equals(password))) {

            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", usuario);

            request.getRequestDispatcher("/panel.jsp")
                   .forward(request, response);

        } else {

            request.setAttribute(
                "error",
                "Usuario o contraseña incorrectos"
            );

            request.getRequestDispatcher("/login.jsp")
                   .forward(request, response);
        }
    }
}