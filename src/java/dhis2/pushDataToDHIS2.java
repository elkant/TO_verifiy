/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dhis2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tomcat.util.codec.binary.Base64;
import org.json.simple.JSONObject;

/**
 *
 * @author EKaunda
 */
public class pushDataToDHIS2 {
    
    
    
public JSONObject UpdateOrgUnitInfor( String ur, JSONObject jd, String user,String password ){

    JSONObject jo = new JSONObject();
    
    
    
        try {           
            
            URL url = new URL (ur);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json; utf-8");
            con.setRequestProperty("Accept", "application/json");            
            con.setDoOutput(true);
            
            //basic authentication
String auth = user + ":" + password;
byte[] encodedAuth = Base64.encodeBase64(auth.getBytes(StandardCharsets.UTF_8));
String authHeaderValue = "Basic " + new String(encodedAuth);
con.setRequestProperty("Authorization", authHeaderValue);

Authenticator.setDefault(new BasicAuthenticator());
//json payload
String jsonInputString = jd.toString();
            
  OutputStream os = con.getOutputStream();
    byte[] input = jsonInputString.getBytes("utf-8");
    os.write(input, 0, input.length);
    
    BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
   
    StringBuilder response = new StringBuilder();
    String responseLine = null;
    while ((responseLine = br.readLine()) != null) {
        response.append(responseLine.trim());
    }
  
    
    jo.put("upload_results",response);
//
//int responseCode = con.getResponseCode();
//System.out.println("Response code"+responseCode);
            
            
        } catch (MalformedURLException ex) {
            Logger.getLogger(pushDataToDHIS2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(pushDataToDHIS2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return jo;
}


private final class BasicAuthenticator extends Authenticator {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
    dhisconfig dc = new dhisconfig();
return new PasswordAuthentication(dc.getDhis2_username(), dc.getDhis2_Password().toCharArray());
}
}
    
}
