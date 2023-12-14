<%-- 
    Document   : verify
    Created on : Mar 10, 2019, 9:27:56 AM
    Author     : fabsys
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
    Statement s=con.createStatement();
    Statement s1=con.createStatement();
    Statement s2=con.createStatement();
    Statement s3=con.createStatement();
    
    ResultSet ss=s.executeQuery("select * from user where email='"+(""+session.getAttribute("email"))+"' and stg1='"+request.getParameter("stg1")+"' and stg2='"+request.getParameter("stg2")+"' and stg3='"+request.getParameter("stg3")+"' and stg4='"+request.getParameter("stg4")+"'");
    if(ss.next())
    {
        ResultSet sss=s1.executeQuery("select * from cartlist where email='"+(""+session.getAttribute("email"))+"'");
        while(sss.next())
        {
            int ssss=s2.executeUpdate("insert into purchase(email,pname,price,qty,profile) value('"+(sss.getString("email"))+"','"+(sss.getString("pname"))+"','"+(sss.getString("price"))+"','"+(sss.getString("qty"))+"','"+(sss.getString("profile"))+"')");
            if(ssss>0)
            {
                int sssss=s3.executeUpdate("delete from cartlist where email='"+(""+session.getAttribute("email"))+"'");
                if(sssss>0)
                {
                    JOptionPane.showMessageDialog(null, "Transaction Successfully...! Products Delevered Soon");
                    response.sendRedirect("viewproduct.jsp");
                }
            }
        }
    }
    else
    {
    JOptionPane.showMessageDialog(null, "Your Tranaction failed");
    ResultSet sss=s1.executeQuery("select * from cartlist where email='"+(""+session.getAttribute("email"))+"'");
        while(sss.next())
        {
            int ssss=s2.executeUpdate("insert into fraud(email,pname,price,qty,profile) value('"+(sss.getString("email"))+"','"+(sss.getString("pname"))+"','"+(sss.getString("price"))+"','"+(sss.getString("qty"))+"','"+(sss.getString("profile"))+"')");
            if(ssss>0)
            {
                int sssss=s3.executeUpdate("delete from cartlist where email='"+(""+session.getAttribute("email"))+"'");
                if(sssss>0)
                {
                    JOptionPane.showMessageDialog(null, "Transaction Successfully...! Products Delevered Soon(This is fraud transaction)");
                    response.sendRedirect("viewproduct.jsp");
                }
            }
        }
    }
    }catch(Exception e)
    {
        JOptionPane.showMessageDialog(null, e);
    }
        %>
    </body>
</html>
