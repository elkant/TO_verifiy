/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saveData;


import db.dbConnweb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mail.sendmail;

/**
 *
 * @author Emmanuel E
 */
public class savedata extends HttpServlet {

      HttpSession session;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String insert="";
          String myresponse="";
        
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during data export at the server."; 
        dbConnweb conn= new dbConnweb();
        
          String usersession="system";
            session=request.getSession();
        
      if(session.getAttribute("user")!=null)
      {
      usersession=session.getAttribute("user").toString();
      }


String id=null;
String cccno=null;
String enddate=null;
String facilityname_from=null;
String facilityname_to=null;
String effectivetodate=null;
String verification_complete=null;
String mail_to=null;
String mail_from=null;

    try {
        
       
      
       
        
id=request.getParameter("id");
cccno=request.getParameter("cccno");
enddate=request.getParameter("enddate");
facilityname_from=request.getParameter("facilityname_from");
facilityname_to=request.getParameter("facilityname_to");
effectivetodate=request.getParameter("effectivetodate");
verification_complete=request.getParameter("verification_complete");
mail_to=request.getParameter("mail_to");
mail_from=request.getParameter("mail_from");


 String usermail=""; 
 if(mail_to.contains("@") && (mail_to.contains(".com") || mail_to.contains(".org")  )){usermail=","+mail_to;}
 
       
          
      
            
  
            
                  
  String checkexisting="select UID from to_verification_data where ccc_no  like '"+cccno+"' and to_date='"+enddate+"'"; 
         
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
       
       
       System.out.println(" Data for id "+id+" and patient "+cccno+" already added ");
   
  
     
          insert=" update to_verification_data set ccc_no=?,to_date=?,Reffered_from_facility=?,reffered_to_facility=?,Transfer_out_verified=?,Date_of_verification=?mail_from=?,mail_to=?,effective_to_date=?"
                 + " where id='"+id+"' ";
                        conn.pst1=conn.conne.prepareStatement(insert);   

                        
conn.pst1.setString(1,cccno);
conn.pst1.setString(2,enddate);
conn.pst1.setString(3,facilityname_from);
conn.pst1.setString(4,facilityname_to);
conn.pst1.setString(5,verification_complete);
conn.pst1.setString(6,"");
conn.pst1.setString(7,mail_from);
conn.pst1.setString(8,mail_to);
conn.pst1.setString(9,effectivetodate);

                      
                   
                          
                        
                        if(conn.pst1.executeUpdate()==1)
                        { 
                            if(!id.contains("annual")){ //notify user only when importing weekly summaries
                               
                                sm.Sendemail("Transfer Out Patient Alert"," Hi, n This is to notify you that patient cccnumber "+cccno+" for "+facilityname_from+" has been transfer out to your supported facility "+facilityname_to+" ", "TO Data data export for "+cccno+" on date "+enddate,"EKaunda@fhi360.org");
                            
                            
                            }
                        }
                        else 
                        {
                              if(!id.contains("annual")){
                        txtresponse="<font color='green'>Data for <b>"+cccno+"</b></font><font color='red'> NOT updated </font><font color='green'> for date  "+enddate+". This is because data for a similar date already exists. </font>";
                        
                              }
                        }
   
   
             
                        
   
   }
   else 
   {
   //do insert code here
   

       
          insert="insert into daily_raw(id,ccc_no,to_date,Reffered_from_facility,reffered_to_facility,Transfer_out_verified,Date_of_verification,mail_from,mail_to) "
                 + " values (?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
conn.pst1.setString(1,id);
conn.pst1.setString(2,cccno);
conn.pst1.setString(3,enddate);
conn.pst1.setString(4,facilityname_from);
conn.pst1.setString(5,facilityname_to);
conn.pst1.setString(6,verification_complete);
conn.pst1.setString(7,"");
conn.pst1.setString(8,mail_from);
conn.pst1.setString(9,mail_to);
                      
            
                     
                        
  if(conn.pst1.executeUpdate()==1)
                        { 
                            if(!id.contains("annual")){ //notify user only when importing weekly summaries
                               
                                sm.Sendemail("Transfer Out Patient Alert"," Hi, n This is to notify you that patient cccnumber "+cccno+" for "+facilityname_from+" has been transfer out to your supported facility "+facilityname_to+" ", "TO Data data export for "+cccno+" on date "+enddate,"EKaunda@fhi360.org");
                            
                            
                            }
                        }
                        else 
                        {
                              if(!id.contains("annual")){
                        txtresponse="<font color='green'>Data for <b>"+cccno+"</b></font><font color='red'> NOT updated </font><font color='green'> for date  "+enddate+". This is because data for a similar date already exists. </font>";
                        
                              }
                        }

       
       
   }
           
    if(id.contains("annual")){txtresponse="";}
         
         if(conn.rs!=null){conn.rs.close();}  
         if(conn.st!=null){conn.st.close();}  
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) {
            Logger.getLogger(savedata.class.getName()).log(Level.SEVERE, null, ex);
             txtresponse="<font color='red'>Tranfer Out Data for ccc number "+cccno+" NOT inserted succesfully for date "+enddate+".  "+ex+" </font>";
        //send an email at this point of the exception
            
          
        } catch (MessagingException ex) {
              Logger.getLogger(savedata.class.getName()).log(Level.SEVERE, null, ex);
          }
        
       
      out.println(txtresponse);   
        
        
        
    }

   
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
