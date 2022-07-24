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
public class Car {
    private int carid;
    private String title;
    private String discription;
    private String rent;
    private String carimg;
    private String color;
    private String mileage;
    private String transmission;
    private String seats;
    private String luggage;
    private String fuel;
    private String Airconditions;
    private String ChildSeat;
    private String GPS;
    private String Luggage_tick;
    private String Music;
    private String SeatBelt;
    private String SleepingBed;
    private String Water;
    private String Bluetooth;
    private String Onboardcomputer;
    private String Audioinput;
    private String Long_Term_Trips;
    private String CarKit;
    private String Remote_central_locking;
    private String Climatecontrol;

    public Car() {
    }

    public Car(int carid, String title, String discription, String rent, String carimg, String color, String mileage, String transmission, String seats, String luggage, String fuel, String Airconditions, String ChildSeat, String GPS, String Luggage_tick, String Music, String SeatBelt, String SleepingBed, String Water, String Bluetooth, String Onboardcomputer, String Audioinput, String Long_Term_Trips, String CarKit, String Remote_central_locking, String Climatecontrol) {
        this.carid = carid;
        this.title = title;
        this.discription = discription;
        this.rent = rent;
        this.carimg = carimg;
        this.color = color;
        this.mileage = mileage;
        this.transmission = transmission;
        this.seats = seats;
        this.luggage = luggage;
        this.fuel = fuel;
        this.Airconditions = Airconditions;
        this.ChildSeat = ChildSeat;
        this.GPS = GPS;
        this.Luggage_tick = Luggage_tick;
        this.Music = Music;
        this.SeatBelt = SeatBelt;
        this.SleepingBed = SleepingBed;
        this.Water = Water;
        this.Bluetooth = Bluetooth;
        this.Onboardcomputer = Onboardcomputer;
        this.Audioinput = Audioinput;
        this.Long_Term_Trips = Long_Term_Trips;
        this.CarKit = CarKit;
        this.Remote_central_locking = Remote_central_locking;
        this.Climatecontrol = Climatecontrol;
    }
    public Car(int carid, String title, String discription, String rent, String mileage, String transmission, String seats, String luggage, String fuel, String Airconditions, String ChildSeat, String GPS, String Luggage_tick, String Music, String SeatBelt, String SleepingBed, String Water, String Bluetooth, String Onboardcomputer, String Audioinput, String Long_Term_Trips, String CarKit, String Remote_central_locking, String Climatecontrol) {
        this.carid = carid;
        this.title = title;
        this.discription = discription;
        this.rent = rent;
        this.carimg = carimg;
        this.color = color;
        this.mileage = mileage;
        this.transmission = transmission;
        this.seats = seats;
        this.luggage = luggage;
        this.fuel = fuel;
        this.Airconditions = Airconditions;
        this.ChildSeat = ChildSeat;
        this.GPS = GPS;
        this.Luggage_tick = Luggage_tick;
        this.Music = Music;
        this.SeatBelt = SeatBelt;
        this.SleepingBed = SleepingBed;
        this.Water = Water;
        this.Bluetooth = Bluetooth;
        this.Onboardcomputer = Onboardcomputer;
        this.Audioinput = Audioinput;
        this.Long_Term_Trips = Long_Term_Trips;
        this.CarKit = CarKit;
        this.Remote_central_locking = Remote_central_locking;
        this.Climatecontrol = Climatecontrol;
    }

    public Car(String title, String discription, String rent, String carimg, String color, String mileage, String transmission, String seats, String luggage, String fuel, String Airconditions, String ChildSeat, String GPS, String Luggage_tick, String Music, String SeatBelt, String SleepingBed, String Water, String Bluetooth, String Onboardcomputer, String Audioinput, String Long_Term_Trips, String CarKit, String Remote_central_locking, String Climatecontrol) {
        this.title = title;
        this.discription = discription;
        this.rent = rent;
        this.carimg = carimg;
        this.color = color;
        this.mileage = mileage;
        this.transmission = transmission;
        this.seats = seats;
        this.luggage = luggage;
        this.fuel = fuel;
        this.Airconditions = Airconditions;
        this.ChildSeat = ChildSeat;
        this.GPS = GPS;
        this.Luggage_tick = Luggage_tick;
        this.Music = Music;
        this.SeatBelt = SeatBelt;
        this.SleepingBed = SleepingBed;
        this.Water = Water;
        this.Bluetooth = Bluetooth;
        this.Onboardcomputer = Onboardcomputer;
        this.Audioinput = Audioinput;
        this.Long_Term_Trips = Long_Term_Trips;
        this.CarKit = CarKit;
        this.Remote_central_locking = Remote_central_locking;
        this.Climatecontrol = Climatecontrol;
    }

    public int getCarid() {
        return carid;
    }

    public void setCarid(int carid) {
        this.carid = carid;
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

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getSeats() {
        return seats;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public String getLuggage() {
        return luggage;
    }

    public void setLuggage(String luggage) {
        this.luggage = luggage;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getAirconditions() {
        return Airconditions;
    }

    public void setAirconditions(String Airconditions) {
        this.Airconditions = Airconditions;
    }

    public String getChildSeat() {
        return ChildSeat;
    }

    public void setChildSeat(String ChildSeat) {
        this.ChildSeat = ChildSeat;
    }

    public String getGPS() {
        return GPS;
    }

    public void setGPS(String GPS) {
        this.GPS = GPS;
    }

    public String getLuggage_tick() {
        return Luggage_tick;
    }

    public void setLuggage_tick(String Luggage_tick) {
        this.Luggage_tick = Luggage_tick;
    }

    public String getMusic() {
        return Music;
    }

    public void setMusic(String Music) {
        this.Music = Music;
    }

    public String getSeatBelt() {
        return SeatBelt;
    }

    public void setSeatBelt(String SeatBelt) {
        this.SeatBelt = SeatBelt;
    }

    public String getSleepingBed() {
        return SleepingBed;
    }

    public void setSleepingBed(String SleepingBed) {
        this.SleepingBed = SleepingBed;
    }

    public String getWater() {
        return Water;
    }

    public void setWater(String Water) {
        this.Water = Water;
    }

    public String getBluetooth() {
        return Bluetooth;
    }

    public void setBluetooth(String Bluetooth) {
        this.Bluetooth = Bluetooth;
    }

    public String getOnboardcomputer() {
        return Onboardcomputer;
    }

    public void setOnboardcomputer(String Onboardcomputer) {
        this.Onboardcomputer = Onboardcomputer;
    }

    public String getAudioinput() {
        return Audioinput;
    }

    public void setAudioinput(String Audioinput) {
        this.Audioinput = Audioinput;
    }

    public String getLong_Term_Trips() {
        return Long_Term_Trips;
    }

    public void setLong_Term_Trips(String Long_Term_Trips) {
        this.Long_Term_Trips = Long_Term_Trips;
    }

    public String getCarKit() {
        return CarKit;
    }

    public void setCarKit(String CarKit) {
        this.CarKit = CarKit;
    }

    public String getRemote_central_locking() {
        return Remote_central_locking;
    }

    public void setRemote_central_locking(String Remote_central_locking) {
        this.Remote_central_locking = Remote_central_locking;
    }

    public String getClimatecontrol() {
        return Climatecontrol;
    }

    public void setClimatecontrol(String Climatecontrol) {
        this.Climatecontrol = Climatecontrol;
    }

    
}
