package control;

import entity.Category;
import entity.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(value="/search")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String txtSearch= req.getParameter("txt");
        DAO dao= new DAO();
        List<Product> list =dao.searchProduct(txtSearch);
        List<Category> listC = dao.getAllCategory();
        req.setAttribute("listP",list);
        req.setAttribute("listCC",listC);
        req.getRequestDispatcher("home.jsp").forward(req,resp);
    }
}