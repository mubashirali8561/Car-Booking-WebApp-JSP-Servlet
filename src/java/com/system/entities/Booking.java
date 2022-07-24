/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.entities;

import java.sql.*;
import java.util.*;



public class Booking {
    private int bid;
    private String PickUp;
    private String DropOff;
    private String PickUpDate;
    private String DropOffDate;
    private String Time;
    private int carid;
    private int userid;
    private int totalamount;
    private String Status;

    public Booking() {
    }

    public Booking(int bid, String PickUp, String DropOff, String PickUpDate, String DropOffDate, String Time, int carid, int userid, int totalamount, String Status) {
        this.bid = bid;
        this.PickUp = PickUp;
        this.DropOff = DropOff;
        this.PickUpDate = PickUpDate;
        this.DropOffDate = DropOffDate;
        this.Time = Time;
        this.carid = carid;
        this.userid = userid;
        this.totalamount = totalamount;
        this.Status = Status;
    }

    public Booking(String PickUp, String DropOff, String PickUpDate, String DropOffDate, String Time, int carid, int userid, int totalamount, String Status) {
        this.PickUp = PickUp;
        this.DropOff = DropOff;
        this.PickUpDate = PickUpDate;
        this.DropOffDate = DropOffDate;
        this.Time = Time;
        this.carid = carid;
        this.userid = userid;
        this.totalamount = totalamount;
        this.Status = Status;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getPickUp() {
        return PickUp;
    }

    public void setPickUp(String PickUp) {
        this.PickUp = PickUp;
    }

    public String getDropOff() {
        return DropOff;
    }

    public void setDropOff(String DropOff) {
        this.DropOff = DropOff;
    }

    public String getPickUpDate() {
        return PickUpDate;
    }

    public void setPickUpDate(String PickUpDate) {
        this.PickUpDate = PickUpDate;
    }

    public String getDropOffDate() {
        return DropOffDate;
    }

    public void setDropOffDate(String DropOffDate) {
        this.DropOffDate = DropOffDate;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }

    public int getCarid() {
        return carid;
    }

    public void setCarid(int carid) {
        this.carid = carid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getTotalamount() {
        return totalamount;
    }

    public void setTotalamount(int totalamount) {
        this.totalamount = totalamount;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    
    
}
