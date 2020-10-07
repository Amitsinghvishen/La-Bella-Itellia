<%-- 
    Document   : getProductImage
    Created on : Apr 9, 2019, 10:15:56 AM
    Author     : Amit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.user.conn.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
Connection con=GetConnection.getConn();
try{
    String sql="SELECT image from product where id=?";
    PreparedStatement pt=con.prepareStatement(sql);
    pt.setInt(1, id);
    ResultSet rs=pt.executeQuery();
            if(rs.next()){
                Blob blob=rs.getBlob("image");
                byte byteArray[]=blob.getBytes(1, (int)blob.length());
                response.setContentType("image/gif");
                OutputStream os=response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
            }
            else{
                System.out.println("image not found for this id");
                out.println("image not found for this id");
            }
}
catch(SQLException ex){
    System.out.println(ex);
}
%>
