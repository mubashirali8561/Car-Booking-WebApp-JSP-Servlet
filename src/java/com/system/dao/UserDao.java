/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.dao;

import com.system.entities.Users;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author NGROX
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(Users users) //add new user
    {
        boolean f = false;
        try
        {
            String query = "INSERT INTO `users`(`fname`, `lname`, `email`, `mobile`, `licenceNumber`, `licenceExpiry`, `countryOfLicence`, `passwrd`, `address`, `paymentDetail`, `LicenceImage`, `role`, `status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, users.getFname());
            pstmt.setString(2, users.getLname());
            pstmt.setString(3, users.getEmail());
            pstmt.setString(4, users.getMobile());
            pstmt.setString(5, users.getLicenceNumber());
            pstmt.setString(6, users.getLicenceExpiry());
            pstmt.setString(7, users.getCountryOfLicence());
            pstmt.setString(8, users.getPasswrd());
            pstmt.setString(9, users.getAddress());
            pstmt.setString(10, users.getPaymentDetail());
            pstmt.setString(11, users.getLicenceImage());
            pstmt.setString(12, users.getRole());
            pstmt.setString(13, users.getStatus());
            
            pstmt.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return f;
    }
    public Users getUserByEmailAndPassword(String email,String password)// search user by email and password for login perpose
    {
        Users user = null;
        try
        {
            String query = "SELECT * FROM `users` WHERE `email`=? and `passwrd`=? and status = 'approved'";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                user = new Users();
                
                //Get data from database and set to the user object
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setUid(rs.getInt("uid"));
                user.setRole(rs.getString("role"));
                user.setStatus(rs.getString("status"));
                user.setMobile(rs.getString("mobile"));
                user.setEmail(rs.getString("email"));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
    public ArrayList<Users> getallUsers()// fatch all Users
    {
        ArrayList<Users> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM users where role = 'customer'";
            Statement st = this.con.createStatement();
            ResultSet result = st.executeQuery(query);
            while (result.next()) {
                int uid = result.getInt("uid");
                String fname = result.getString("fname");
                String lname = result.getString("lname");
                String email = result.getString("email");
                String mobile = result.getString("mobile");
                String licenceNumber = result.getString("licenceNumber");
                String licenceExpiry = result.getString("licenceExpiry");
                String countryOfLicence = result.getString("countryOfLicence");
                String address = result.getString("address");
                String paymentDetail = result.getString("paymentDetail");
                String LicenceImage = result.getString("LicenceImage");
                String status = result.getString("status");
                Users user = new Users(uid,fname,lname,email,mobile,licenceNumber,licenceExpiry,countryOfLicence,address,paymentDetail,LicenceImage,status);
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public boolean UpdateUserPassword(String password , String email)// update user Password
    {
        boolean f =false;
        try {
            String query = "UPDATE `users` SET `passwrd`=? WHERE `email`=?";
            PreparedStatement stmt =  con.prepareStatement(query);
            stmt.setString(1, password);
            stmt.setString(2, email);
            stmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public boolean updateStatus(int uid , String status)// update user status
    {
        boolean f =false;
        try {
            String query = "UPDATE `users` SET `status`=? WHERE `uid`=?";
            PreparedStatement stmt =  con.prepareStatement(query);
            stmt.setString(1, status);
            stmt.setInt(2, uid);
            stmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
