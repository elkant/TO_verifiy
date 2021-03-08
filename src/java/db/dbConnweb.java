/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.net.URL;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author SIXTYFOURBIT
 */
public final class dbConnweb{

   public ResultSet rs0,rs, rs1, rs2, rs3, rs4;
   public Statement st0,st, st1, st2, st3, st4;
   public PreparedStatement pst,pst1,pst2,pst3,pst4;
   public  String dbsetup[] = new String[4];
   public Connection conne = null;

    public dbConnweb() {
        try {
            
         Class.forName("com.mysql.jdbc.Driver").newInstance();
       
          conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/to_verifier","root", "test");
        
      
                st0 = conne.createStatement();
                st = conne.createStatement();
                st1 = conne.createStatement();
                st2 = conne.createStatement();
                st3 = conne.createStatement();
                st4 = conne.createStatement();
               
                
                
        } catch (Exception ex) {
            Logger.getLogger(dbConnweb.class.getName()).log(Level.SEVERE, null, ex);
            
            System.out.println("Error "+ex);
            //error in dbase configuration 
            //call the jsp page that does configuration
        }
    }

 

}
