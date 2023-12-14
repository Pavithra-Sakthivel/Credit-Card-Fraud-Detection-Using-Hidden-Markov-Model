<%-- 
    Document   : userlogincheck
    Created on : Mar 10, 2019, 6:40:27 AM
    Author     : fabsys
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        String email=request.getParameter("email");
        String pass=request.getParameter("psw");
        try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
                    PreparedStatement check=con.prepareStatement("select * from user where email='"+email+"' and psw='"+pass+"' ");
                    ResultSet rs=check.executeQuery();
                    if(rs.next())
                    {
                        JOptionPane.showMessageDialog(null, "Login Successfully  ");
                        
                        session.setAttribute("email", email);
                         response.sendRedirect("user.jsp");
                    }else{
                        JOptionPane.showMessageDialog(null, "Username / Password was incorrect...!");
                        response.sendRedirect("userlogin.jsp");
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        %>
    </body>
</html>
