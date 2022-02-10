/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author trait
 */
public class Account {
   private int id;
   private String fullname;
   private String username;
   private String password;
   private String email;
   private String phone;
   private int isTeach;
   private int isAdmin;



    public Account(int id, String fullname, String username, String password, String email, String phone, int isTeach, int isAdmin) {
        this.id = id;
        this.fullname = fullname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.isTeach = isTeach;
        this.isAdmin = isAdmin;
    }
   
    

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsTeach() {
        return isTeach;
    }

    public void setIsTeach(int isTeach) {
        this.isTeach = isTeach;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", fullname=" + fullname + ", username=" + username + ", password=" + password + ", email=" + email + ", phone=" + phone + ", isTeach=" + isTeach + ", isAdmin=" + isAdmin + '}';
    }

   

   
   
   
}
