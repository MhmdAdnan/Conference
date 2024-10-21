package com.Adnan.Conference.Service.Model;

public class Member {
    public String getGQR() {
        return GQR;
    }

    public void setGQR(String GQR) {
        this.GQR = GQR;
    }

    private String GQR;

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }
    private String Name;
private String Email;

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    private String Number;
private String type;
private boolean Attendace_conference;
private boolean Attendace_workshop;

}
