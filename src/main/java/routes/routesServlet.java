package routes;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calcula-nota")
public class routesServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            double nota1 = Double.parseDouble(req.getParameter("primeira-nota"));
            double nota2 = Double.parseDouble(req.getParameter("segunda-nota"));
            double media = ((nota1 + nota2) / 2);

            req.setAttribute("media", media);

            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, res);
        } catch (Error e) {
            req.setAttribute("media", e);
        }
    }
}
