<%-- 
    Document   : menu
    Created on : Mar 28, 2019, 8:42:03 PM
    Author     : Amit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.user.conn.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
        <style type="text/css">
         .image{
            height: 200px;
            width: auto;
            padding: 20px;
            border-radius: 5px 5px 0 0;
        }
        .image:hover{
            height: 220px;
            transition: 0.3s;
            width: auto;
        }

        .menuItem {
            float: left;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            width: 30%;
            border-radius: 5px;
         }
         
         .card:hover {
           box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
         }

        .menu-content{
            margin-left: 50px;
            text-align: center;
        }
        body{
            color: black;
        }
        html {
           scroll-behavior: smooth;
         }

        </style>
    </head>
    <body>
     <header class="">
        <nav>
            <div class="row clearfix">
                <a href="index.jsp">
                <img src="images/logo.png" class="logo"/>
                </a>
                <ul class="main-nav animated slideInDown">
                    <li><a href="#">CAKE</a></li>
                    <li><a href="#">PIZZA</a></li>
                    <li><a href="#">PASTA</a></li>
                    <li><a href="index.jsp">LOG out</a></li>
                </ul>
            </div>
        </nav>
         <div class="menu-content">
        <%
            int id=0;
            
            Connection con=GetConnection.getConn();
            String sql="SELECT id,name,cost,category from product";
            PreparedStatement pt=con.prepareStatement(sql);
            ResultSet rs=pt.executeQuery();
            while(rs.next()){
                id=rs.getInt("id");
                int cost=rs.getInt("cost");
                String name=rs.getString("name");
                String category=rs.getString("category");
        %>
            <div class="menuItem">
        <img class="image" src="http://localhost:8080/La%20Bella%20Italia/getProductImage.jsp?id=<%=id%>" />
            
        <% out.println("<div style='margin:5px'>");
            out.print("<br>");
            out.println("Name: "+name);
            out.print("<br>");
            out.println("Cost: "+cost);
            out.print("<br>");
            out.println("Category: "+category);
            out.print("<br>");
            out.println("</div>");
            out.println("</div>");
        }
        %>
            </div>
     </header>
    </body>
</html>
