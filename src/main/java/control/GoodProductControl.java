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

@WebServlet(value="/goodprice")
public class GoodProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAO dao = new DAO();

        List<Product> listG = dao.getGoodProduct(); //san pham gia tots
        List<Category> listC = dao.getAllCategory();


        req.setAttribute("listCC", listC);
        req.setAttribute("listP", listG);
        RequestDispatcher rd= req.getRequestDispatcher("home.jsp");
        rd.forward(req,resp);
    }
}
