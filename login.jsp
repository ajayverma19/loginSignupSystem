
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
       <%
       String ph=request.getParameter("p1");
       String pwd=request.getParameter("p2");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","845469");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select name,password from miniProject where phone=('"+ph+"')");
       rs.next();
       String pwd2=rs.getString(2);
       String uname=rs.getString(1);
       if(pwd.equals(pwd2))
       {
            session=request.getSession();
           session.setAttribute("username",uname);
           response.sendRedirect("welcome.jsp");
       }
       else
           response.sendRedirect("index.html");
     
       
       }catch(Exception ex)
       {
           response.sendRedirect("index.html");
       }
       %>
    </body>
</html>
