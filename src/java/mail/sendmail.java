/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;


import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class sendmail {
public String filenames,cu,dates,computername,senderofmail;
        
 String full_date;
    public sendmail(){
    }  
 public boolean Sendemail (String senderofemail,String ujumbe , String subject, String mailreceiver)throws MessagingException {
     String toAddress=mailreceiver;
        
        senderofmail="Transfer_Out_verifier";
       
        if(!toAddress.equals("")){
        //toAddress+=",";
        }
        //toAddress+="";
        String host = "smtp.gmail.com";
        String Password ="Toverifier2021!";
        String from = "toverifier@gmail.com";
        // toAddress = "aphiapluschwsattendance@gmail.com";  filled above...
        
        // Get system properties
        Properties props = System.getProperties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtps.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        Session session = Session.getInstance(props, null);

        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(from));

        message.setRecipients(Message.RecipientType.TO, toAddress);

        message.setSubject(subject);

        BodyPart messageBodyPart = new MimeBodyPart();

        messageBodyPart.setText(ujumbe);

        Multipart multipart = new MimeMultipart();

        multipart.addBodyPart(messageBodyPart);

        //messageBodyPart = new MimeBodyPart();

        //DataSource source = new FileDataSource(filename);

        //messageBodyPart.setDataHandler(new DataHandler(source));

       
        //multipart.addBodyPart(messageBodyPart);

        message.setContent(multipart);

        try {
            javax.mail.Transport tr = session.getTransport("smtps");
            tr.connect(host, from, Password);
            tr.sendMessage(message, message.getAllRecipients());
            System.out.println("Mail Sent Successfully");
            tr.close();
            
            return true;

        } catch (SendFailedException sfe) {

            System.out.println(sfe);
            return false;
        }
    }


}