/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.dao;

import com.system.entities.Car;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author NGROX
 */
public class CarDao {
    private Connection con;

    public CarDao(Connection con) {
        this.con = con;
    }
    public boolean saveCar(Car cars) //add new car
    {
        boolean f = false;
        try
        {
            String query = "INSERT INTO `cars`(`title`, `discription`, `rent`, `carimg`, `color`, `mileage`, `transmission`, `seats`, `luggage`, `fuel`, `Airconditions`, `ChildSeat`, `GPS`, `Luggage_tick`, `Music`, `SeatBelt`, `SleepingBed`, `Water`, `Bluetooth`, `Onboardcomputer`, `Audioinput`, `Long_Term_Trips`, `CarKit`, `Remote_central_locking`, `Climatecontrol`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, cars.getTitle());
            pstmt.setString(2, cars.getDiscription());
            pstmt.setString(3, cars.getRent());
            pstmt.setString(4, cars.getCarimg());
            pstmt.setString(5, cars.getColor());
            pstmt.setString(6, cars.getMileage());
            pstmt.setString(7, cars.getTransmission());
            pstmt.setString(8, cars.getSeats());
            pstmt.setString(9, cars.getLuggage());
            pstmt.setString(10, cars.getFuel());
            pstmt.setString(11, cars.getAirconditions());
            pstmt.setString(12, cars.getChildSeat());
            pstmt.setString(13, cars.getGPS());
            pstmt.setString(14, cars.getLuggage_tick());
            pstmt.setString(15, cars.getMusic());
            pstmt.setString(16, cars.getSeatBelt());
            pstmt.setString(17, cars.getSleepingBed());
            pstmt.setString(18, cars.getWater());
            pstmt.setString(19, cars.getBluetooth());
            pstmt.setString(20, cars.getOnboardcomputer());
            pstmt.setString(21, cars.getAudioinput());
            pstmt.setString(22, cars.getLong_Term_Trips());
            pstmt.setString(23, cars.getCarKit());
            pstmt.setString(24, cars.getRemote_central_locking());
            pstmt.setString(25, cars.getClimatecontrol());
            
            pstmt.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return f;
    }
    public boolean updateCar(Car cars) //add new car
    {
        boolean f = false;
        try
        {
            String query = "UPDATE `cars` SET `title`=?,`discription`=?,`rent`=?,`mileage`=?,`transmission`=?,`seats`=?,`luggage`=?,`fuel`=?,`Airconditions`=?,`ChildSeat`=?,`GPS`=?,`Luggage_tick`=?,`Music`=?,`SeatBelt`=?,`SleepingBed`=?,`Water`=?,`Bluetooth`=?,`Onboardcomputer`=?,`Audioinput`=?,`Long_Term_Trips`=?,`CarKit`=?,`Remote_central_locking`=?,`Climatecontrol`=? WHERE `carid`=?";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, cars.getTitle());
            pstmt.setString(2, cars.getDiscription());
            pstmt.setString(3, cars.getRent());
            pstmt.setString(4, cars.getMileage());
            pstmt.setString(5, cars.getTransmission());
            pstmt.setString(6, cars.getSeats());
            pstmt.setString(7, cars.getLuggage());
            pstmt.setString(8, cars.getFuel());
            pstmt.setString(9, cars.getAirconditions());
            pstmt.setString(10, cars.getChildSeat());
            pstmt.setString(11, cars.getGPS());
            pstmt.setString(12, cars.getLuggage_tick());
            pstmt.setString(13, cars.getMusic());
            pstmt.setString(14, cars.getSeatBelt());
            pstmt.setString(15, cars.getSleepingBed());
            pstmt.setString(16, cars.getWater());
            pstmt.setString(17, cars.getBluetooth());
            pstmt.setString(18, cars.getOnboardcomputer());
            pstmt.setString(19, cars.getAudioinput());
            pstmt.setString(20, cars.getLong_Term_Trips());
            pstmt.setString(21, cars.getCarKit());
            pstmt.setString(22, cars.getRemote_central_locking());
            pstmt.setString(23, cars.getClimatecontrol());
            pstmt.setInt(24, cars.getCarid());
            
            pstmt.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return f;
    }
    public ArrayList<Car> getallCars()// fatch all Cars
    {
        ArrayList<Car> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM cars";
            Statement st = this.con.createStatement();
            ResultSet result = st.executeQuery(query);
            while (result.next()) {
                int id = result.getInt("carid");
                String title = result.getString("title");
                String discription = result.getString("discription");
                String rent = result.getString("rent");
                String carimg = result.getString("carimg");
                String color = result.getString("color");
                String mileage = result.getString("mileage");
                String transmission = result.getString("transmission");
                String seats = result.getString("seats");
                String luggage = result.getString("luggage");
                String fuel = result.getString("fuel");
                String Airconditions = result.getString("Airconditions");
                String ChildSeat = result.getString("ChildSeat");
                String GPS = result.getString("GPS");
                String Luggage_tick = result.getString("Luggage_tick");
                String Music = result.getString("Music");
                String SeatBelt = result.getString("SeatBelt");
                String SleepingBed = result.getString("SleepingBed");
                String Water = result.getString("Water");
                String Bluetooth = result.getString("Bluetooth");
                String Onboardcomputer = result.getString("Onboardcomputer");
                String Audioinput = result.getString("Audioinput");
                String Long_Term_Trips = result.getString("Long_Term_Trips");
                String CarKit = result.getString("CarKit");
                String Remote_central_locking = result.getString("Remote_central_locking");
                String Climatecontrol = result.getString("Climatecontrol");
                
                Car cars = new Car(id,title,discription,rent,carimg,color,mileage,transmission,seats,luggage,fuel,Airconditions,ChildSeat,GPS,Luggage_tick,Music,SeatBelt,SleepingBed,Water,Bluetooth,Onboardcomputer,Audioinput,Long_Term_Trips,CarKit,Remote_central_locking,Climatecontrol);
                list.add(cars);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Car> getallCars(int cid)// fatch single Cars
    {
        ArrayList<Car> list = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM cars where carid="+cid+"";
            Statement st = this.con.createStatement();
            ResultSet result = st.executeQuery(query);
            while (result.next()) {
                int id = result.getInt("carid");
                String title = result.getString("title");
                String discription = result.getString("discription");
                String rent = result.getString("rent");
                String carimg = result.getString("carimg");
                String color = result.getString("color");
                String mileage = result.getString("mileage");
                String transmission = result.getString("transmission");
                String seats = result.getString("seats");
                String luggage = result.getString("luggage");
                String fuel = result.getString("fuel");
                String Airconditions = result.getString("Airconditions");
                String ChildSeat = result.getString("ChildSeat");
                String GPS = result.getString("GPS");
                String Luggage_tick = result.getString("Luggage_tick");
                String Music = result.getString("Music");
                String SeatBelt = result.getString("SeatBelt");
                String SleepingBed = result.getString("SleepingBed");
                String Water = result.getString("Water");
                String Bluetooth = result.getString("Bluetooth");
                String Onboardcomputer = result.getString("Onboardcomputer");
                String Audioinput = result.getString("Audioinput");
                String Long_Term_Trips = result.getString("Long_Term_Trips");
                String CarKit = result.getString("CarKit");
                String Remote_central_locking = result.getString("Remote_central_locking");
                String Climatecontrol = result.getString("Climatecontrol");
                
                Car cars = new Car(id,title,discription,rent,carimg,color,mileage,transmission,seats,luggage,fuel,Airconditions,ChildSeat,GPS,Luggage_tick,Music,SeatBelt,SleepingBed,Water,Bluetooth,Onboardcomputer,Audioinput,Long_Term_Trips,CarKit,Remote_central_locking,Climatecontrol);
                list.add(cars);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public boolean deleteCar(int uid)// delete Car
    {
        boolean f = false;
        try {
            String query = "DELETE FROM `cars` WHERE `carid`=?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, uid);
            stmt.executeUpdate();
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
