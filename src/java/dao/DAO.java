/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.Database;
import entity.AccessCourse;
import entity.Account;
import entity.Category;
import entity.Course;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trait
 */
public class DAO {
    Connection conn=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public List<Course> getAllCourse(){
        List<Course> list=new ArrayList<>();
        String sql="select * from Course";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Category> getAllCategory(){
        List<Category> list=new ArrayList<>();
        String sql="select * from Category";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
   
    public List<Course> getCourseByType(String type){
        List<Course> list=new ArrayList<>();
        String sql="select * from Course\n"
                + "where type = ?";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, type);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Course> getLastCourse(){
        List<Course> list=new ArrayList<>();
        String sql="select top 5 * from Course\n" +
                        "order by id desc";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Course getCourseByID(String id){
    Course  course=null;
        String sql="select * from Course\n"
                + "where id = ?";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
              course=new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12));
            }
        } catch (Exception e) {
        }
        return course;
    }
    public List<Course> searchByName(String name){
        List<Course> list=new ArrayList<>();
        String sql="select * from Course\n"
                + "where name like ?";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, "%"+name+"%");
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Account login(String username, String password){
        String sql="select * from Account\n" +
            "where username = ?\n" +
            "and password = ?";
        
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs=ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7), 
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        
        return null;
    }
    
    public List<Course> getCourseBytID(int tID){
        List<Course> list=new ArrayList<>();
        String sql="select * from Course\n"
                + "where tID = ?";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setInt(1, tID);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
      public List<AccessCourse> getOrderBybuyID(int buyID){
        List<AccessCourse> list=new ArrayList<>();
        String sql="select * from AccessCourse\n"
                + "where buyID = ?";
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setInt(1, buyID);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new AccessCourse(rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getString(3), 
                        rs.getInt(4), 
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    
    
    public void deleteCourse(String id){
        String sql="delete from Course\n" +
                    "where id = ?";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch (Exception e) {
        }
    }
    
     public void deleteCategory(String id){
        String sql="delete from Category\n" +
                    "where id = ?";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch (Exception e) {
        }
    }
    
    public void insertCourse(String name, String description, String image,
            String tname,String shift, int price, String openDate, String type, int tID){
        String sql="INSERT INTO [dbo].[Course]\n" +
"           ([name]\n" +
"           ,[description]\n" +
"           ,[image]\n" +
"           ,[tname]\n" +
"           ,[shift]\n" +
"           ,[price]\n" +
"           ,[openDate]\n" +
"           ,[type]\n" +
"           ,[tID])\n" +
"values(?,?,?,?,?,?,?,?,?)";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, image);
            ps.setString(4, tname);
            ps.setString(5, shift);
            ps.setFloat(6, price);
            ps.setString(7, openDate);
            ps.setString(8, type);
            ps.setInt(9, tID);
            
            ps.executeQuery();
        } catch (Exception e) {
        }
        
    }
    
      public void insertCategory(String name, String image){
         String sql="insert into Category\n" +
"values(?,?)";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);

            
            ps.executeQuery();
        } catch (Exception e) {
        }
        
    }
    
    public void editCourse(String name, String description, String image,
            String shift, String price, String openDate, String type, String id){
        String sql="Update Course Set name = ?, description = ?, image = ?, shift = ?, price = ?, openDate = ?, type = ? where id = ?";
        try {
            conn= Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, image);
            ps.setString(4, shift);
            ps.setString(5, price);
            ps.setString(6, openDate);
            ps.setString(7, type);
            ps.setString(8, id);
            ps.executeQuery();
        } catch (Exception e) {
        }
        
    }
    public void insertAccount(String fullname, String username, String password, String email, String phone){
        String sql="insert into Account\n" +
"values(?,?,?,?,?,0,0)";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.executeQuery();
        } catch (Exception e) {
        }
        
    }
    
     public void insertOrder(String courseID, String time, int buyID, String status, String courseName){
        String sql="insert into AccessCourse\n" +
"values(?,?,?,?,?)";
        try {
            conn=Database.makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, courseID);
            ps.setString(2, time);
            ps.setInt(3, buyID);
            ps.setString(4, status);
            ps.setString(5, courseName);
            ps.executeQuery();
        } catch (Exception e) {
        }
        
    }
    
     public Account checkAccountExist(String username){
        String sql="select * from Account\n" +
            "where username = ?";
        
        try {
            conn=new Database().makeConnection();
            ps=conn.prepareStatement(sql);
            ps.setString(1, username);
            rs=ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7), 
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        
        return null;
    }
    
   
}
