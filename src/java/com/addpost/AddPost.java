/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.addpost;

import com.connection.DataBaseImpl;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Acer
 */
 @MultipartConfig(maxFileSize=16177215)
public class AddPost extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
       
             
    }
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     HttpSession session=request.getSession();
     String username=(String)session.getAttribute("username");
             
     
      String posttitle=request.getParameter("title");
         String pdate=request.getParameter("pdate");
          String puses=request.getParameter("puses");
           String desc=request.getParameter("desc");
             Part image=request.getPart("emage");
             
             InputStream input=null;
             if(image!=null){
                input=image.getInputStream();
             }
     try{
     DataBaseImpl dbi=new DataBaseImpl();
     
     PreparedStatement pst=dbi.getConnection().prepareStatement("insert into post values(null,?,?,?,?,?,?,'waiting')");
     pst.setString(1,username);
     pst.setString(2,posttitle);
      pst.setString(3,pdate);
      pst.setString(4,puses);
      pst.setString(5,desc);
      if(input!=null){
         pst.setBlob(6,input);
      }
      int i=pst.executeUpdate();
      if(i>0){
        response.sendRedirect("Add_Posts.jsp?msg=success");  
      }else{
        response.sendRedirect("Add_Posts.jsp?msg=failed");   
      }
     }catch(Exception e){
         System.out.println(e);
     }
             
             
 }
    
  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
