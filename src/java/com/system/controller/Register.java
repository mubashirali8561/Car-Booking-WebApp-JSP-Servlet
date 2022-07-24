
package com.system.controller;

import com.system.dao.UserDao;
import com.system.entities.Massage;
import com.system.entities.Users;
import com.system.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NGROX
 */
public class Register extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
             /* New Customer Registration code */
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String mobile = request.getParameter("phone");
            String licenceNumber = request.getParameter("Licence_Number");
            String licenceExpiry = request.getParameter("Licence_Expiry");
            String countryOfLicence = request.getParameter("country");
            String passwrd = request.getParameter("passwrd");
            String address = request.getParameter("address");
            String paymentDetail = request.getParameter("payment");
            String LicenceImage = request.getParameter("Driving_Licence");
            String role = "customer";
            String status = "pending";
            HttpSession s = request.getSession();
           
            
            Users user = new Users(fname,lname,email,mobile,licenceNumber,licenceExpiry,countryOfLicence,passwrd,address,paymentDetail,LicenceImage,role,status);

            UserDao userdao = new UserDao(ConnectionProvider.getConnection());
            if(userdao.saveUser(user))
            {
               Massage m = new Massage("Congratulation! Registration Successfully Done.","success","alert-success");
               s.setAttribute("msg",m);
               response.sendRedirect("login.jsp");
            }else
            {
               Massage m = new Massage("Erorr! Invalid Data Enter.","error","alert-danger");
               s.setAttribute("msg",m);
               response.sendRedirect("login.jsp");
            }
            out.println("</body>");
            out.println("</html>");
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
