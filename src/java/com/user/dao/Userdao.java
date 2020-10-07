/*
    Document   : admin
    Created on : Apr 2, 2019, 5:08:47 PM
    Author     : Amit
*/
package com.user.dao;

import com.user.conn.GetConnection;
import com.user.dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Amit
 */
public class Userdao {
    public int insertData(User u){
      int i=0;
      Connection con=GetConnection.getConn();

      try{
          String sql="INSERT INTO `user` (`fname`, `lname`, `email`, `mobile`, `password`) VALUES (?,?,?,?,?);";
          PreparedStatement pt=con.prepareStatement(sql);
          pt.setString(1, u.getFname());
          pt.setString(2, u.getLname());
          pt.setString(3, u.getEmail());
          pt.setString(4, u.getMobile());
          pt.setString(5, u.getPassword());
          i=pt.executeUpdate();
          return i;
      }
      catch(SQLException ex){
          System.out.println("Error !!!!!!!!");
          System.out.println(ex);
            return i;
      }
      
    }
    public ResultSet validUser(String email,String password){
        Connection con=GetConnection.getConn();
        ResultSet r=null;
        try{
            String sql="SELECT * FROM user WHERE email = '"+email+"' AND password = '"+password+"';";
            Statement st=con.createStatement();
            r=st.executeQuery(sql);
            return r;
        }
        catch(SQLException ex){
            System.out.println(ex);
            
        }
       return r;
    }
    
}
