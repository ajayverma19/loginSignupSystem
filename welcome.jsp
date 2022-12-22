

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            img{
                height: 500px;
                width:500px;
                position: absolute;
                padding-left: 30%;
                padding-top: 10%;
            }
            table{
                float: right;
                font-size: 40px;
                width:20%;
            }
            .welcome{
                padding-left: 38%;
                padding-top: 3%;
                font-size:25px;
            }
        </style>
    </head>
    <body>
        <%
            
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("index.html");
        }
        else
        {
            String uname=(String)session.getAttribute("username");
        }
        %>
     <img src="images/welcome.svg">   
     
        <table>
            <tr>
                <td><a href="delete.jsp">delete</td>
                <td><a href="logout.jsp">logout</td>
            </tr>
        </table>  
     <div class="welcome">
         <h1>welcome user </h1>
         </div>
         </body>
</html>
