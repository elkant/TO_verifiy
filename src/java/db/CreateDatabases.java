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
    
    
   
    
 
    public String createTOSchema(dbConnweb conn){
        
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
    
    
    
    public String createuserstable(dbConnweb conn){
       
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
    
    public String createOrgUnitTable(dbConnweb conn){
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
  
  
    public String createTOResultsTable(dbConnweb conn){
    
        String status="";
    try {
    String qry="CREATE TABLE `to_verification_data` ( " +
"  `UID` varchar(45) NOT NULL, " +
"  `ccc_no` varchar(255) DEFAULT NULL, " +
"  `to_date` varchar(12) DEFAULT NULL, " +
"  `Reffered_from_facility` varchar(25) DEFAULT NULL, " +
"  `reffered_to_facility` varchar(25) DEFAULT NULL, " +
"  `Transfer_out_verified` varchar(12) DEFAULT NULL, " +
"  `Date_of_verification` varchar(12) DEFAULT NULL, " +
"  `mail_to` varchar(255) DEFAULT NULL, " +
"  `mail_from` varchar(252) DEFAULT NULL, " +
"  `effective_to_date` varchar(252) DEFAULT NULL, " +
"  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP, " +
"  PRIMARY KEY (`UID`), " +
"  KEY `ccc_no_index` (`ccc_no`), " +
"  KEY `to_date_index` (`to_date`), " +
"  KEY `Reffered_from_facility_index` (`Reffered_from_facility`), " +
"  KEY `reffered_to_facility_index` (`reffered_to_facility`), " +
"  KEY `Transfer_out_verified_index` (`Transfer_out_verified`), " +
"  KEY `Date_of_verification_index` (`Date_of_verification`), " +
"  KEY `mail_from_index` (`mail_from`), " +
"  KEY `mail_to_index` (`mail_to`), " +
"  KEY `timestamp_index` (`timestamp`) " +
") ENGINE=InnoDB DEFAULT CHARSET=utf8;";
    

         conn.st.executeUpdate(qry);            
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateDatabases.class.getName()).log(Level.SEVERE, null, ex);
       status="Creating to Results Table failed";
        }  
        
        return status;
        
    }
    
}
