
package com.system.entities;

import java.sql.Timestamp;

public class Users {
    private int uid;
    private String fname;
    private String lname;
    private String email;
    private String mobile;
    private String licenceNumber;
    private String licenceExpiry;
    private String countryOfLicence;
    private String passwrd;
    private String address;
    private String paymentDetail;
    private String LicenceImage;
    private String role;
    private String status;

    public Users(int uid, String fname, String lname, String email, String mobile, String licenceNumber, String licenceExpiry, String countryOfLicence, String address, String paymentDetail, String LicenceImage, String status) {
        this.uid = uid;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.licenceNumber = licenceNumber;
        this.licenceExpiry = licenceExpiry;
        this.countryOfLicence = countryOfLicence;
        this.address = address;
        this.paymentDetail = paymentDetail;
        this.LicenceImage = LicenceImage;
        this.status = status;
    }

    public Users() {
    }

    public Users(int uid, String fname, String lname, String email, String mobile, String licenceNumber, String licenceExpiry, String countryOfLicence, String passwrd, String address, String paymentDetail, String LicenceImage, String role) {
        this.uid = uid;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.licenceNumber = licenceNumber;
        this.licenceExpiry = licenceExpiry;
        this.countryOfLicence = countryOfLicence;
        this.passwrd = passwrd;
        this.address = address;
        this.paymentDetail = paymentDetail;
        this.LicenceImage = LicenceImage;
        this.role = role;
    }

    public Users(String fname, String lname, String email, String mobile, String licenceNumber, String licenceExpiry, String countryOfLicence, String passwrd, String address, String paymentDetail, String LicenceImage, String role, String status) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.licenceNumber = licenceNumber;
        this.licenceExpiry = licenceExpiry;
        this.countryOfLicence = countryOfLicence;
        this.passwrd = passwrd;
        this.address = address;
        this.paymentDetail = paymentDetail;
        this.LicenceImage = LicenceImage;
        this.role = role;
        this.status = status;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getLicenceNumber() {
        return licenceNumber;
    }

    public void setLicenceNumber(String licenceNumber) {
        this.licenceNumber = licenceNumber;
    }

    public String getLicenceExpiry() {
        return licenceExpiry;
    }

    public void setLicenceExpiry(String licenceExpiry) {
        this.licenceExpiry = licenceExpiry;
    }

    public String getCountryOfLicence() {
        return countryOfLicence;
    }

    public void setCountryOfLicence(String countryOfLicence) {
        this.countryOfLicence = countryOfLicence;
    }

    public String getPasswrd() {
        return passwrd;
    }

    public void setPasswrd(String passwrd) {
        this.passwrd = passwrd;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPaymentDetail() {
        return paymentDetail;
    }

    public void setPaymentDetail(String paymentDetail) {
        this.paymentDetail = paymentDetail;
    }

    public String getLicenceImage() {
        return LicenceImage;
    }

    public void setLicenceImage(String LicenceImage) {
        this.LicenceImage = LicenceImage;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
