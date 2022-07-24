/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.controller;

import com.system.dao.CarDao;
import com.system.entities.Car;
import com.system.entities.Massage;
import com.system.helper.ConnectionProvider;
import com.system.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class AddCar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String title = request.getParameter("title");
            String discription = request.getParameter("discription");
            String rent = request.getParameter("rent");
            String color[] = request.getParameterValues("color");
            String mileage = request.getParameter("mileage");
            String transmission = request.getParameter("transmission");
            String seats = request.getParameter("seats");
            String luggage = request.getParameter("luggage");
            String fuel = request.getParameter("fuel");
            //checkbox
            String Airconditions = request.getParameter("Airconditions");
            String ChildSeat = request.getParameter("ChildSeat");
            String GPS = request.getParameter("GPS");
            String Luggage_tick = request.getParameter("Luggage_tick");
            String Music = request.getParameter("Music");
            String SeatBelt = request.getParameter("SeatBelt");
            String SleepingBed = request.getParameter("SleepingBed");
            String Water = request.getParameter("Water");
            String Bluetooth = request.getParameter("Bluetooth");
            String Onboardcomputer = request.getParameter("Onboardcomputer");
            String Audioinput = request.getParameter("Audioinput");
            String Long_Term_Trips = request.getParameter("Long_Term_Trips");
            String CarKit = request.getParameter("CarKit");
            String Remote_central_locking = request.getParameter("Remote_central_locking");
            String Climatecontrol = request.getParameter("Climatecontrol");
            //checkbox end
            String Colors ="";
            if (color != null && color.length != 0) {
                for (int i = 0; i < color.length; i++) {
                    Colors =color[i]+","+Colors;
                }
            }
            if(Airconditions !=null && Airconditions.length() != 0)
            {
                Airconditions = "1";
            }else
            {
                Airconditions = "0";
            }
            if(ChildSeat !=null && ChildSeat.length() != 0)
            {
                ChildSeat = "1";
            }else
            {
                ChildSeat = "0";
            }
            if(GPS !=null && GPS.length() != 0)
            {
                GPS = "1";
            }else
            {
                GPS = "0";
            }
            if(Luggage_tick !=null && Luggage_tick.length() != 0)
            {
                Luggage_tick = "1";
            }else
            {
                Luggage_tick = "0";
            }
            if(Music !=null && Music.length() != 0)
            {
                Music = "1";
            }else
            {
                Music = "0";
            }
            if(SeatBelt !=null && SeatBelt.length() != 0)
            {
                SeatBelt = "1";
            }else
            {
                SeatBelt = "0";
            }
            if(SleepingBed !=null && SleepingBed.length() != 0)
            {
                SleepingBed = "1";
            }else
            {
                SleepingBed = "0";
            }
            if(Water !=null && Water.length() != 0)
            {
                Water = "1";
            }else
            {
                Water = "0";
            }
            if(Bluetooth !=null && Bluetooth.length() != 0)
            {
                Bluetooth = "1";
            }else
            {
                Bluetooth = "0";
            }
            if(Onboardcomputer !=null && Onboardcomputer.length() != 0)
            {
                Onboardcomputer = "1";
            }else
            {
                Onboardcomputer = "0";
            }
            if(Audioinput !=null && Audioinput.length() != 0)
            {
                Audioinput = "1";
            }else
            {
                Audioinput = "0";
            }
            if(Long_Term_Trips !=null && Long_Term_Trips.length() != 0)
            {
                Long_Term_Trips = "1";
            }else
            {
                Long_Term_Trips = "0";
            }
            if(CarKit !=null && CarKit.length() != 0)
            {
                CarKit = "1";
            }else
            {
                CarKit = "0";
            }
            if(Remote_central_locking !=null && Remote_central_locking.length() != 0)
            {
                Remote_central_locking = "1";
            }else
            {
                Remote_central_locking = "0";
            }
            if(Climatecontrol !=null && Climatecontrol.length() != 0)
            {
                Climatecontrol = "1";
            }else
            {
                Climatecontrol = "0";
            }
            Part img = request.getPart("carimg"); //this Part Object use to hold image when we receive image from the Form.
            HttpSession s = request.getSession();
            String imagename = img.getSubmittedFileName();
            Car car = new Car(title,discription,rent,imagename,Colors,mileage,transmission,seats,luggage,fuel,Airconditions,ChildSeat,GPS,Luggage_tick,Music,SeatBelt,SleepingBed,Water,Bluetooth,Onboardcomputer,Audioinput,Long_Term_Trips,CarKit,Remote_central_locking,Climatecontrol);
            CarDao dao = new CarDao(ConnectionProvider.getConnection());
            
            if(dao.saveCar(car))
            {
                out.println("done");
                String path = request.getRealPath("/") + "images" + File.separator + img.getSubmittedFileName(); //this is the directory where image store
                out.println(path);
                Helper.saveFile(img.getInputStream(), path); //here we use Helper class method saveFile which save car image into database.
                Massage m = new Massage("New Car Added Successfully.","success","alert-success");
                s.setAttribute("msg",m);
                response.sendRedirect("admin/dashboard.jsp");
             }else
             {
                out.println("Error! While Posting Comment.");
                Massage m = new Massage("Error! While Adding New Car.","error","alert-danger");
                s.setAttribute("msg",m);
                response.sendRedirect("admin/dashboard.jsp");
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
