

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>homePage</title>
     
</head>
<body onpageload="validate()">
   <%
       String name=request.getParameter("t1");
       String phone=request.getParameter("p1");
       String pass=request.getParameter("pass1");
       String conpass=request.getParameter("pass2");
       
       if(pass.equals(conpass) && phone.length()==10)
       {
           try{
             Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","845469");
                Statement st=con.createStatement();
                int rs=st.executeUpdate("insert into miniProject values('"+name+"','"+phone+"','"+pass+"')");
                if(rs!=0)
                    response.sendRedirect("index.html");
           }catch(Exception ex)
           {
               out.print(ex);
           }
       }
       else
       {
           response.sendRedirect("signup.html");
       }
   %>
</body>
</html>


