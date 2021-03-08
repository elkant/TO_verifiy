/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EKaunda
 */
public class CreateDatabases {
    
    
   
    
 
    public String CreateTOSchema(dbConnweb conn){
        
        String status="Completed";
        try {
            
            String qry="CREATE SCHEMA IF NOT EXISTS `to_verifier` ;";
            
            conn.st.executeUpdate(qry);            
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateDatabases.class.getName()).log(Level.SEVERE, null, ex);
       status="failed";
        }
        return status;
    }
    
    
    
    
    
    
    
    public String Createuserstable(dbConnweb conn){
       
        String status="Completed";
        try {
            
            String qry="  CREATE TABLE IF NOT EXISTS `user` " +
"( " +
"  `userid` varchar(100) NOT NULL, " +
"  `fname` varchar(100) DEFAULT NULL, " +
"  `mname` varchar(100) DEFAULT NULL, " +
"  `lname` varchar(100) DEFAULT NULL, " +
"  `username` varchar(100) DEFAULT NULL, " +
"  `email` varchar(500) DEFAULT NULL, " +
"  `password` varchar(100) DEFAULT NULL, " +
"  `level` varchar(100) DEFAULT NULL, " +
"  PRIMARY KEY (`userid`), " +
"  KEY `username` (`username`,`password`), " +
"  KEY `level` (`level`), " +
"  KEY `fname` (`fname`), "+
"  KEY `mname` (`mname`), " +
"  KEY `lname` (`lname`), " +
"  KEY `mail` (`email`), " +
"  KEY `pwd` (`password`) " +
") ENGINE=InnoDB DEFAULT CHARSET=latin1; ";
            
            conn.st.executeUpdate(qry);            
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateDatabases.class.getName()).log(Level.SEVERE, null, ex);
       status="failed";
        }
        return status;
    }
    
    public String CreateOrgUnitTable(dbConnweb conn){
     String status="Completed";
        try {
            
   String qry=" CREATE TABLE IF NOT EXISTS `dhis2_organizationunit` ( " +
"  `orgunitid` varchar(12) NOT NULL, " +
"  `parentid` varchar(12) DEFAULT NULL, " +
"  `orgunitname` varchar(200) NOT NULL, " +
"  `oulevel` varchar(200) NOT NULL DEFAULT '0', " +
"  `lastmodifieddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, " +
"  `oupath` varchar(200) DEFAULT NULL, "
+ " `email` varchar(200) DEFAULT NULL, " 
+ " `phone` varchar(200) DEFAULT NULL, " +
"  PRIMARY KEY (`orgunitid`), " +
"  KEY `parentid` (`parentid`), " +
"  KEY `orgunitname` (`orgunitname`), " +
"  KEY `oulevel` (`oulevel`), " +
"  KEY `lastmodifieddate` (`lastmodifieddate`), " +
"  KEY `oupath` (`oupath`) " +
") ENGINE=InnoDB DEFAULT CHARSET=utf8; " +
"  ";
            
            conn.st.executeUpdate(qry);            
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateDatabases.class.getName()).log(Level.SEVERE, null, ex);
       status="failed";
        }
        return status;
    }
  
  
}
