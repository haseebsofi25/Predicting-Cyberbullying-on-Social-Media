/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.graph;

import com.resultset.ResultSetReturnImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author Acer
 */
public class ViewGraph extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        try{
            OutputStream out=response.getOutputStream();
     DefaultCategoryDataset barchart=new DefaultCategoryDataset();
    
            
             String query="select title from cybercomment "; 
            ResultSetReturnImpl r=new ResultSetReturnImpl();
           ResultSet rs=r.getExecuteQuery(query);
           while(rs.next()){
               String title=rs.getString("title");
           
           
            String quer1="select count(title),title from cybercomment where title='"+title+"'"; 
            ResultSetReturnImpl r1=new ResultSetReturnImpl();
           ResultSet rs1=r1.getExecuteQuery(quer1);
        
           
             
            while(rs1.next()){
                String status=rs1.getString("title");
                int ex=rs1.getInt(1);
                 barchart.addValue(ex,"",status);
            }
           }
            JFreeChart BarChartObject=ChartFactory.createBarChart("", "", "count", barchart, PlotOrientation.VERTICAL, true, true, false);
      response.setContentType("image/png");
      ChartUtilities.writeChartAsPNG(out,BarChartObject,580,400);
        }catch(Exception e){
         System.out.println(e);  
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
