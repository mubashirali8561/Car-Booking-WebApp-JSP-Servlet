/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.entities;

/**
 *
 * @author NGROX
 */
public class BookingData {
    private int id;
    private int bookid;
    private String title;
    private String discription;
    private String rent;
    private String carimg;
    private String PickUp;
    private String DropOff;
    private String PickUpDate;
    private String DropOffDate;
    private String Time;
    private int totalamount;
    private int discount;
    private String Status;

    public BookingData() {
    }

    public BookingData(int id,int bookid, String title, String discription, String rent, String carimg, String PickUp, String DropOff, String PickUpDate, String DropOffDate, String Time, int totalamount, int discount, String Status) {
        this.id = id;
        this.bookid = bookid;
        this.title = title;
        this.discription = discription;
        this.rent = rent;
        this.carimg = carimg;
        this.PickUp = PickUp;
        this.DropOff = DropOff;
        this.PickUpDate = PickUpDate;
        this.DropOffDate = DropOffDate;
        this.Time = Time;
        this.totalamount = totalamount;
        this.discount = discount;
        this.Status = Status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getRent() {
        return rent;
    }

    public void setRent(String rent) {
        this.rent = rent;
    }

    public String getCarimg() {
        return carimg;
    }

    public void setCarimg(String carimg) {
        this.carimg = carimg;
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

    public int getTotalamount() {
        return totalamount;
    }

    public void setTotalamount(int totalamount) {
        this.totalamount = totalamount;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }
    
    
    
}
