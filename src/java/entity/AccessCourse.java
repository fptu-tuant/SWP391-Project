/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author trait
 */
public class AccessCourse {
    private int id;
    private int courseID;
    private String time;
    private int buyID;
    private String status;
    private String courseName;
    public AccessCourse() {
    }

    public AccessCourse(int id, int courseID, String time, int buyID, String status, String courseName) {
        this.id = id;
        this.courseID = courseID;
        this.time = time;
        this.buyID = buyID;
        this.status = status;
        this.courseName = courseName;
    }

    

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

   

    public int getBuyID() {
        return buyID;
    }

    public void setBuyID(int buyID) {
        this.buyID = buyID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    @Override
    public String toString() {
        return "AccessCourse{" + "id=" + id + ", courseID=" + courseID + ", time=" + time + ", buyID=" + buyID + ", status=" + status + ", courseName=" + courseName + '}';
    }

    

    
    
}
