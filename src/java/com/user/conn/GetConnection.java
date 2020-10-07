
package com.user.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Amit
 */

interface ReqValues{
String username="amit";
String password="amit";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/labellaitalia";
}

public class GetConnection implements ReqValues {
    
    public static Connection getConn(){
        
        Connection con=null;
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(url,username,password);
        }
        catch(ClassNotFoundException|SQLException ex){
            System.out.println(ex);
        }
        return con;
    }
}
