/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package system.bean;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author JerryKwok
 */
public class TeacherBean implements Serializable{
    private String id;
    private String fname;
    private String lname;
    private String gender;
    private String email;
    private String birthday;
    private String title;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getGender() {
        return gender;
    }
    
    public String getTeacherFormalName() {
        if (gender.equals("M")) {
            return "Mr " + getName();
        } else {
            return "Miss " + getName();
        }
    }
    
    public String getName(){
        return fname + " " + lname;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    
    
    
}
