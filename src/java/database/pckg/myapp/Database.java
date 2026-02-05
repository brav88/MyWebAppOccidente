/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database.pckg.myapp;
import java.sql.*;

/**
 *
 * @author Personal
 */
public class Database {
    
    Connection conn;
    
    public Database(){
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/PriceAutoSales", "root", "Admin$1234");
        } catch (ClassNotFoundException | SQLException ex) {
            System.getLogger(Database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }      
    }    
    
    public ResultSet ExecuteQuery(String sql){      
        try {
            Statement cmd = conn.createStatement();
            return cmd.executeQuery(sql);
        } catch (SQLException ex) {
            System.getLogger(Database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            return null;
        }       
    }
    
    public void Close(){
        try{
            conn.close();
        } catch (SQLException ex) {
            System.getLogger(Database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
    
}
