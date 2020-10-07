/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.controller;

import com.product.dao.Productdao;
import com.product.dto.Product;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177216) //1.5mb
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
        String name = request.getParameter("name");
        int cost = Integer.parseInt(request.getParameter("cost"));
        String category = request.getParameter("category");    
        Part image = request.getPart("image");

        
        
        if(image!=null){
          InputStream inputStream=image.getInputStream();
          if(inputStream!=null){
            
            Product p=new Product(name,category,cost); 
            Productdao dao=new Productdao();
            int i=dao.insertData(p,inputStream);
            if(i>0){
                out.println("<h1>Data inserted succcessfully</h1>");
            }
          }
        } else{
            out.println("Can't find the file");
        }
        
                
    }

}
