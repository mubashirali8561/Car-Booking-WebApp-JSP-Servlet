/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.controller;

import com.system.dao.BookDao;
import com.system.entities.Booking;
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
public class BookCar extends HttpServlet {

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
              
            String id = request.getParameter("id");//user id
            HttpSession s = request.getSession();//get the session
            Users user = (Users)s.getAttribute("currentUser");
            int userid = user.getUid();
            if(id != null)
            {
                int cid = Integer.parseInt(id);//car ID
                BookDao bookdao = new BookDao(ConnectionProvider.getConnection());//connection constructor
                if(bookdao.UpdateCarID(cid,0,userid))//take data from database using BookDAO
                {
                    out.println("done");
                    Massage m = new Massage("Car Booked Successfully.","success","alert-success");
                    s.setAttribute("msg",m);
                    response.sendRedirect("customer/thanks.jsp");
                }else
                {
                    out.println("Error! While Posting Comment.");
                    Massage m = new Massage("Error! While Booking Car.","error","alert-danger");
                    s.setAttribute("msg",m);
                    response.sendRedirect("customer/index.jsp");
                }
                
            }else{
                String pulocation = request.getParameter("pulocation");
                String dolocation = request.getParameter("dolocation");
                String pudate = request.getParameter("pudate");
                String dodate = request.getParameter("dodate");
                String putime = request.getParameter("putime");
                int carid = 0;
                int total = 0;
                String status = "Pending";
                BookDao bookdao = new BookDao(ConnectionProvider.getConnection());
                Booking book =new Booking(pulocation,dolocation,pudate,dodate,putime,carid,userid,total,status);
                if(bookdao.saveBooking(book))
                {
                   out.println("done");
                   Massage m = new Massage("Car Booked Successfully.","success","alert-success");
                   s.setAttribute("msg",m);
                   response.sendRedirect("customer/car.jsp");
                }else
                {
                   out.println("Error! While Posting Comment.");
                   Massage m = new Massage("Error! While Booking Car.","error","alert-danger");
                   s.setAttribute("msg",m);
                   response.sendRedirect("customer/index.jsp");
                }
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
