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
public class Course {
    private int id;
    private String name;
    private String description;
    private String image;
    private String tname;
    private String shift;
    private int price;
    private Date openDate;
    private String type;
    private String link;
    private String document;

    public Course() {
    }

    public Course(int id, String name, String description, String image, String tname, String shift, int price, Date openDate, String type, String link, String document) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.tname = tname;
        this.shift = shift;
        this.price = price;
        this.openDate = openDate;
        this.type = type;
        this.link = link;
        this.document = document;
    }

   
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getOpenDate() {
        return openDate;
    }

    public void setOpenDate(Date openDate) {
        this.openDate = openDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "Course{" + "id=" + id + ", name=" + name + ", description=" + description + ", image=" + image + ", tname=" + tname + ", shift=" + shift + ", price=" + price + ", openDate=" + openDate + ", type=" + type + ", link=" + link + ", document=" + document + '}';
    }

   


    
     
    

   

    
    
}
