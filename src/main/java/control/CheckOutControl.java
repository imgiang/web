package control;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckOutControl extends HttpServlet {
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        String PROID= request.getParameter("1");
        String name = request.getParameter("kh_ten");
        String gioitinh = request.getParameter("kh_gioitinh");
        String diachi = request.getParameter("kh_diachi");
        String dienthoai = request.getParameter("kh_dienthoai");
        String email = request.getParameter("kh_email");
        String cmnd = request.getParameter("kh_cmnd");
        DAO dao = new DAO();
        dao.checkout(name,gioitinh,diachi,dienthoai,email,cmnd);
        response.sendRedirect("home.jsp");



    }
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    doGet(request, response);
}
}