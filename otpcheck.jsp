

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String email=""+session.getAttribute("email");
        //String otp=""+session.getAttribute("otp");

        String id=""+session.getAttribute(email);
        String otp=request.getParameter("cvv");
                    //JOptionPane.showMessageDialog(null, otp);

        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
    Statement s=con.createStatement();
    
    ResultSet ss=s.executeQuery("select * from user where email='"+(""+session.getAttribute("email"))+"' ");
    if(ss.next())
    {
        String otp1=ss.getString("otp");
                       //     JOptionPane.showMessageDialog(null, otp1);

        if(otp1.equals(otp)){
    JOptionPane.showMessageDialog(null, "Then go for markov modal verification...!");
    response.sendRedirect("markov.jsp");
    }
    else{
        JOptionPane.showMessageDialog(null, "Incorrect OTP");
    response.sendRedirect("viewcardlist.jsp");
    }
    }
    }catch(Exception e)
            {JOptionPane.showMessageDialog(null, e);
    }
        
        %>
    </body>
</html>
