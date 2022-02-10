/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author trait
 */
@WebServlet(name = "AddAccountControl", urlPatterns = {"/addAccount"})
public class AddAccountControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       request.setCharacterEncoding("UTF-8");
       String fullname=request.getParameter("name");
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       String email=request.getParameter("email");
       String phone=request.getParameter("phone");
       String repeat=request.getParameter("repeat");
       if(!password.equals(repeat)){
           request.setAttribute("mess", "Xác nhận mật khẩu không đúng");
           request.setAttribute("username", username);
           request.getRequestDispatcher("signup").forward(request, response);
       }else{
           DAO dao=new DAO();
           Account acc = dao.checkAccountExist(username);
           if(acc==null){
               dao.insertAccount(fullname, username, password, email, phone);
               response.sendRedirect("home");
           }else{
               request.setAttribute("mess", "Tài khoản đã có người sử dụng");
               request.setAttribute("username", username);
               request.getRequestDispatcher("signup").forward(request, response);
           }
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
