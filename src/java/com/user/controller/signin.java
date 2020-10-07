/*
    Document   : admin
    Created on : Apr 2, 2019, 5:08:47 PM
    Author     : Amit
*/
package com.user.controller;

import com.user.dao.Userdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "signin", urlPatterns = {"/signin"})
public class signin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String password =request.getParameter("password");
        HttpSession session=request.getSession();

            Userdao dao=new Userdao();
            ResultSet r=dao.validUser(email, password);
            try{
            if(r.next()){
                session.setAttribute("email_valid", "correct");
                RequestDispatcher rd= request.getRequestDispatcher("menu.jsp");
                rd.forward(request, response);
                
            }
            else{
                System.out.println("Wrong Email or password");
                session.setAttribute("email_valid", "wrong");
                response.sendRedirect("index.jsp");
              
            }
            }
            catch(SQLException ex){
                System.out.println(ex);
            }
        }
        
    }



