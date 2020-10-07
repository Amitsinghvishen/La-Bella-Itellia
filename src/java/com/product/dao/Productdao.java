/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.dao;

import com.product.dto.Product;
import com.user.conn.GetConnection;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Amit
 */
public class Productdao {
    public int insertData(Product p,InputStream inputStream){
        int i=0;
        Connection con=GetConnection.getConn();
              try{
          String sql="INSERT INTO `product` (`name`, `category`, `cost`, `image`) VALUES (?,?,?,?);";
          PreparedStatement pt=con.prepareStatement(sql);
          pt.setString(1,p.getName());
          pt.setString(2, p.getCategory());
          pt.setInt(3, p.getCost());
          pt.setBlob(4,inputStream);
          i=pt.executeUpdate();
          return i;
      }
      catch(SQLException ex){
          System.out.println("Error !!!!!!!!");
          System.out.println(ex);
            return i;
      }
    }
    
}
