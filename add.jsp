<%-- 
    Document   : add
    Created on : Mar 10, 2019, 7:10:09 AM
    Author     : fabsys
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        try{
            int qty=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
                    Statement s=con.createStatement();
                    Statement s1=con.createStatement();
                    ResultSet ss=s.executeQuery("select * from cartlist where email='"+(""+session.getAttribute("email"))+"' and pname='"+request.getParameter("pname")+"'");
                    if(ss.next())
                    {
                        qty=Integer.parseInt(ss.getString("qty"));
                     int a=s1.executeUpdate("update cartlist set qty='"+(qty+1)+"' where email='"+(""+session.getAttribute("email"))+"' and pname='"+request.getParameter("pname")+"'");
                     
                     if(a>0)
                     {
                         JOptionPane.showMessageDialog(null, "Product Successfully added to cartlist!");
                        response.sendRedirect("viewproduct.jsp");
                     }
                    }
                    else
                    {
                    PreparedStatement check=con.prepareStatement("insert into cartlist(email,pname,price,qty,profile) value('"+(""+session.getAttribute("email"))+"','"+request.getParameter("pname")+"','"+request.getParameter("price")+"','1','"+request.getParameter("profile")+"')");
                    int c=check.executeUpdate();
                    if(c>0)
                    {
                        JOptionPane.showMessageDialog(null, "Product added to cart list..");
                        response.sendRedirect("viewproduct.jsp");
                    }
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        
        %>
    </body>
</html>
