/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author trait
 */
public class Database {
     public  static Connection makeConnection() throws Exception {
        String connectionUrl="jdbc:sqlserver://localhost:1433;"
        + "databaseName=Assignment;User=sa;Password=27112000";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(connectionUrl);
        return con;
    }
     
}
