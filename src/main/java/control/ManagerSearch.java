package control;


import dao.DAO;
import entity.Category;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value="/managersearch")
public class ManagerSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String txtSearch= req.getParameter("txtm");
        DAO dao= new DAO();
        List<Product> list =dao.searchProduct(txtSearch);
        List<Category> listC = dao.getAllCategory();
        req.setAttribute("listP",list);
        req.setAttribute("listCC",listC);
        req.setAttribute("txtM",txtSearch);
        req.getRequestDispatcher("ManagerProduct.jsp").forward(req,resp);

    }
}
