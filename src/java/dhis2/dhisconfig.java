/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dhis2;

/**
 *
 * @author EKaunda
 */



public class dhisconfig {
  

String dhis2_Home_URL =null;

    
String dhis2_username=null; 
String dhis2_Password=null;

String  dhis2_API_URL=null; 

String  dhis2_API_URL_orgUnits=null;  
String  dhis2_API_URL_dataElements=null;  

 


  public dhisconfig()
  {
  
  dhis2_Home_URL ="https://play.dhis2.org/2.34.3/"; 
  dhis2_API_URL="api/";  
  dhis2_API_URL_orgUnits="organisationUnits.json?fields=id,name,level,parent,shortName,email,phoneNumber,latitude,longitude&paging=false&links=false&filter=level:eq:4";  
  
  //I have already created an element calld TX_Verify on DHIS2 Manually and imported it using id K6YZOBFBB8P
  
  dhis2_API_URL_dataElements="/dataElements.json?filter=id:eq:K6YZOBFBB8P";
 
  }  
  
public String getDhis2_username() {
        return dhis2_username;
    }

    public void setDhis2_username(String dhis2_username) {
        this.dhis2_username = dhis2_username;
    }

    public String getDhis2_Password() {
        return dhis2_Password;
    }

    public void setDhis2_Password(String dhis2_Password) {
        this.dhis2_Password = dhis2_Password;
    }
  
}
