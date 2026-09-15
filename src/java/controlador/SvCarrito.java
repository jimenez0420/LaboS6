package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Modelo.Producto;
/**
 *
 * @author Victor
 */
@WebServlet(name = "SvCarrito", urlPatterns = {"/SvCarrito"})
public class SvCarrito extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<Producto> productos = new ArrayList<>();

        productos.add(new Producto(1, "Laptop", 2500.00, 1));
        productos.add(new Producto(2, "Mouse", 50.00, 2));
        productos.add(new Producto(3, "Teclado", 120.00, 1));
        productos.add(new Producto(4, "Monitor", 800.00, 2));

        double totalGeneral = 0;

        for (Producto producto : productos) {
            totalGeneral += producto.getSubtotal();
        }

        request.setAttribute("productos", productos);
        request.setAttribute("totalGeneral", totalGeneral);
        request.getRequestDispatcher("/carro.jsp")
               .forward(request, response);
    }
}