
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
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        if(uname.equals("admin"))
        {
            if(pass.equals("admin"))
            {
                JOptionPane.showMessageDialog(null, "Login Successfully");
                response.sendRedirect("admin.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Ooops try after sometime....!");
                 response.sendRedirect("adminlogin.jsp");
            }
        }else
        {
            JOptionPane.showMessageDialog(null, "Enter the correct Username");
            response.sendRedirect("adminlogin.jsp");
        }
        
        %>
    </body>
</html>
