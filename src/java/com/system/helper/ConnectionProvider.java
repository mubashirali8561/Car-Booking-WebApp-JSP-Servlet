/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author NGROX
 */
public class ConnectionProvider {
    private static Connection con; //here we make private variable con to create a connection with database.
    public static Connection getConnection()
    {
        try
        {
            if(con == null) //if connection is null then it will make connectoin first the other case it will send error in case connection not created
            {
                //Deiver Class Load
                Class.forName("com.mysql.jdbc.Driver");
                //create a connection
                String db= "car_rental_db"; //this is oour database name in localhost/phpmyadmin
                String url = "jdbc:mysql://localhost:3306/"+db; //its our connection string url
                String user = "root"; //every connection have a specific user to read or write on database this is our default user in localhost root is used as default user
                String password = ""; //the default user have a password this localhost default password is blank.

                con = DriverManager.getConnection(url, user, password); //its a driver class that manage our connection with database. we attach library mysql-connector this driver came from the library you dont need to explore this driver.
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
