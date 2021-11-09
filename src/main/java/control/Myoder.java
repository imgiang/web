package control;

import dao.DAO;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/myOder")
public class Myoder extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        //Get data from JSP
        String id = request.getParameter("ProductID");
        String quantity = request.getParameter("Quantity");
        int pid = Integer.parseInt(id);
        int amount = Integer.parseInt(quantity);

        //Using session to get Account ID
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int aId = a.getUid();
    }


}
