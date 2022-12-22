

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete Page</title>
    </head>
    <body>
       <%
       
       String uname=(String)session.getAttribute("username");
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","845469");
       Statement st=con.createStatement();
       int rs=st.executeUpdate("delete from miniProject where name=('"+uname+"')");
       if(rs!=0)
       {
           response.sendRedirect("index.html");
       }
       else
       {
           out.print("some error occured!");
       }
       }catch(Exception ex)
       {
           out.print(ex);
       }
       
       %>
    </body>
</html>
