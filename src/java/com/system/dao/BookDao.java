/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.dao;

import com.system.entities.Booking;
import com.system.entities.BookingData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


public class BookDao {
    private Connection con;

    public BookDao(Connection con) {
        this.con = con;
    }
    public boolean saveBooking(Booking booking) //add new Bookinggd
    {
        boolean f = false;
        try
        {
            String query = "INSERT INTO `booking`(`PickUp`, `DropOff`, `PickUpDate`, `DropOffDate`, `Time`, `carid`, `userid`, `totalamount`, `status`) VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            
            pstmt.setString(1, booking.getPickUp());
            pstmt.setString(2, booking.getDropOff());
            pstmt.setString(3, booking.getPickUpDate());
            pstmt.setString(4, booking.getDropOffDate());
            pstmt.setString(5, booking.getTime());
            pstmt.setInt(6, booking.getCarid());
            pstmt.setInt(7, booking.getUserid());
            pstmt.setInt(8, booking.getTotalamount());
            pstmt.setString(9, booking.getStatus());
            
            pstmt.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return f;
    }
    public boolean UpdateCarID(int cid, int total, int uid) //update car id in booking
    {
        boolean f =false;
        try {
            String query = "UPDATE `booking` SET `carid`=?,`totalamount`=? ,`status`='Booked' WHERE `userid`=? and `totalamount`=0 and `carid`=0";
            PreparedStatement stmt =  con.prepareStatement(query);
            stmt.setInt(1, cid);
            stmt.setInt(2, total);
            stmt.setInt(3, uid);
            
            stmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public ArrayList<BookingData> getBookedCarByUser(int uid)
    {
        ArrayList<BookingData> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM booking as b,cars as c WHERE b.carid = c.carid and b.userid ="+uid+"";
            Statement st = this.con.createStatement();
            ResultSet result = st.executeQuery(query);
            while (result.next()) {
                int id = result.getInt("carid");
                int Bookid = result.getInt("Bid");
                String title = result.getString("title");
                String discription = result.getString("discription");
                String rent = result.getString("rent");
                String carimg = result.getString("carimg");
                String PickUp = result.getString("PickUp");
                String DropOff = result.getString("DropOff");
                String PickUpDate = result.getString("PickUpDate");
                String DropOffDate = result.getString("DropOffDate");
                String Time = result.getString("Time");
                int totalamount = result.getInt("totalamount");
                int discount = result.getInt("discount");
                String status = result.getString("status");
                BookingData book = new BookingData(id,Bookid,title,discription,rent,carimg,PickUp,DropOff,PickUpDate,DropOffDate,Time,totalamount,discount,status);//object to store data
                list.add(book);//object pass booking to the array list
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public boolean updateDiscount(int id, int discount) 
    {
        boolean f =false;
        try {
            String query = "UPDATE `booking` SET `discount`=? WHERE `Bid`=?";
            PreparedStatement stmt =  con.prepareStatement(query);
            stmt.setInt(1, discount);
            stmt.setInt(2, id);
            
            stmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
