/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author java1
 */
public class Dbcon {

    public static Connection getCon() throws ClassNotFoundException {
        Connection con = null;  
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/triage", "root", "root");
            System.out.println("Connection Established"+con);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
