

<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Random"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
    Statement s=con1.createStatement();
    Statement s1=con1.createStatement();
    
    ResultSet ss=s.executeQuery("select * from user where email='"+(""+session.getAttribute("email"))+"' and atm1='"+request.getParameter("atm1")+"' and atm2='"+request.getParameter("atm2")+"' and atm3='"+request.getParameter("atm3")+"' and atm4='"+request.getParameter("atm4")+"' and cvv='"+request.getParameter("cvv")+"'");
    if(ss.next())
    {
        
    String e=ss.getString("email");
        Random r=new Random();
        int ra=r.nextInt(1000000);
        int a=s1.executeUpdate("update user set otp='"+ra+"' where email='"+(""+session.getAttribute("email"))+"'");
        if(a>0)
        {
               
        
                
System.out.println("Key is............."+e);
   
                                String txt=e.trim().concat(": This is your otp  " +ra+ " to purchase.");
                                System.out.println(txt);
                                   // String mailid=rset.getString(2);
                                    String email = "pavithrasakthivel38@gmail.com",  
                                        password = "lmwemyhrgsxmwnyy", 
                                        host = "smtp.gmail.com",  
                                        port = "465",  
                                        to = e.trim(),  
                                        subject = "Confirmation Message",  
                                        text =txt.trim();  

                                        Properties props = new Properties();  
                                        props.put("mail.smtp.user", email);  
                                        props.put("mail.smtp.host", host);  
                                        props.put("mail.smtp.port", port);  
                                        props.put("mail.smtp.starttls.enable","true");  
                                        props.put("mail.smtp.auth", "true");  
                                        props.put("mail.smtp.socketFactory.port", port);  
                                        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
                                        props.put("mail.smtp.socketFactory.fallback", "false");  

                                        SecurityManager security = System.getSecurityManager();  

                                        try  
                                        {  
                                        class SMTPAuthenticator extends javax.mail.Authenticator  
                                        {  
                                        public PasswordAuthentication getPasswordAuthentication()  
                                        { 
                                            String email = "pavithrasakthivel38@gmail.com",  
                                            password = "lmwemyhrgsxmwnyy";        
                                            return new PasswordAuthentication(email, password);  
                                        }  
                                        }
                                        SMTPAuthenticator auth = new SMTPAuthenticator();  
                                        Session sessions = Session.getInstance(props, auth);  
                                        sessions.setDebug(true);  

                                        MimeMessage msg = new MimeMessage(sessions);  
                                        msg.setText(text);  
                                        msg.setSubject(subject);  
                                        msg.setFrom(new InternetAddress(email));  
                                        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));  

                                        Transport.send(msg); 
                    
                    
                      
                
            }
              catch(Exception e1)
        {
            JOptionPane.showMessageDialog(null, e1);
        } 
                JOptionPane.showMessageDialog(null, "Enter the OTP which set to your Phone number");
                response.sendRedirect("otpverification.jsp?otp="+ra);
                session.setAttribute((""+session.getAttribute("email")), ra);
                session.setAttribute("otp",ra);
       
                
    }else
    {
        JOptionPane.showMessageDialog(null, "Enter the correct creditcart number / CVV");
        response.sendRedirect("purchase.jsp");
    }
//    JOptionPane.showMessageDialog(null, total);
    }
}catch(Exception e)
{
    JOptionPane.showMessageDialog(null, e);
}
       
       %>
    </body>
</html>
