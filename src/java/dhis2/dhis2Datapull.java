/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dhis2;

import db.dbConnweb;
import java.util.List;

/**
 *
 * @author EKaunda
 */
public class dhis2Datapull {
    
   
    
    
     public List pullDataElements(dhisconfig dc, UrlResourceManager urm)
     {
     String url=dc.dhis2_Home_URL+dc.dhis2_API_URL+dc.dhis2_API_URL_dataElements;
    String uname=dc.dhis2_username;
    String pwd=dc.dhis2_Password;
       
    return urm.getUrlResource(url,uname,pwd);
    }
     
      public List pullOrgUnits(dhisconfig dc, UrlResourceManager urm)
    {
    String url=dc.dhis2_Home_URL+dc.dhis2_API_URL+dc.dhis2_API_URL_orgUnits;
    String uname=dc.dhis2_username;
    String pwd=dc.dhis2_Password;
    
    return urm.getUrlResource(url,uname,pwd);
    }
     

    
}
