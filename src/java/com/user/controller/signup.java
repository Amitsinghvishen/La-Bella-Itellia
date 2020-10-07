/*
    Document   : signup
    Created on : Apr 2, 2019, 5:08:47 PM
    Author     : Amit
*/
package com.user.controller;

import com.user.dao.Userdao;
import com.user.dto.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Amit
 */
public class signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname= request.getParameter("fname").toUpperCase();
        String lname=request.getParameter("lname").toUpperCase();
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");
        String password=request.getParameter("password");
        PrintWriter out = response.getWriter();
        
        User u=new User(fname,lname,email,mobile,password);
        Userdao dao=new Userdao();
        int i=dao.insertData(u);
        if(i>0){
            RequestDispatcher rd=request.getRequestDispatcher("menu.jsp");
            rd.forward(request, response);
        }
        else{
            out.println(fname+lname+email+mobile+password);
        }
    }

}
