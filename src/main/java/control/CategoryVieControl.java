package control;

import dao.DAO;
import entity.Category;
import entity.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/catevie")
public class CategoryVieControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
        DAO dao = new DAO();
        List<   Product> list = dao.getTop6();
        List<Category> listC = dao.getAllCategoryVie();

        req.setAttribute("listP", list);
        req.setAttribute("listCC", listC);

        rd.forward(req, resp);
    }
}
