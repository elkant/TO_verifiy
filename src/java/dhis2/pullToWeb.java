/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dhis2;

import db.dbConnweb;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.parser.ParseException;



/**
 *
 * @author EKaunda
 */
public class pullToWeb extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            
                      
            dhis2Datapull dp= new dhis2Datapull();
            
            dhisconfig dc = new dhisconfig();
            
          //use admin and District user names staticly for now
          
          dc.setDhis2_username("admin");
          dc.setDhis2_Password("district");
            
            UrlResourceManager urm = new UrlResourceManager();
            
            
            
            String datarequest="";
            
            
           if(request.getParameter("datarequest")!=null)
           {
               
           datarequest=request.getParameter("datarequest");
           
                      
           }
           
        
          
            switch (datarequest) 
            {
                case "pullOrgUnits":
                    out.println(dp.pullOrgUnits(dc, urm));
                    break;
                case "pullDataElements":
                    out.println(dp.pullDataElements(dc, urm));
                    break;
                default:
                    out.println("[migrateData:{'a':''}]");
                    break;
            }
          
        
            
            
        } 
        
        finally 
        {
            out.close();
        }
    }
//    192.168.0.119

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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(pullToWeb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
    
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(pullToWeb.class.getName()).log(Level.SEVERE, null, ex);
        }
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
