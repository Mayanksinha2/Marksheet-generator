<%-- 
    Document   : rep
    Created on : 31-May-2022, 5:24:22 pm
    Author     : mayan
--%>

<%@page import="java.lang.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        <%
                String nm=request.getParameter("nm");
                 int cls=Integer.parseInt(request.getParameter("cls").toString()); 
                 int rol=Integer.parseInt(request.getParameter("rol").toString()); 

                 int eng=Integer.parseInt(request.getParameter("eng").toString()); 
                 int mat=Integer.parseInt(request.getParameter("mat").toString());
                 int sci=Integer.parseInt(request.getParameter("sci").toString());
                 int soc=Integer.parseInt(request.getParameter("soc").toString());
                 int hin=Integer.parseInt(request.getParameter("hin").toString());
              
                  if((eng+mat+sci+soc+hin)/5>=40)
                     out.println(nm+ " you are passed");
                 else
                     out.println(nm+ " you are failed");



        %>
    <center>
        <h1>Report Card</h1>
        <br><br><br><br><br><br>
        <table border="2">
            <thead>
                <tr>
                    <th colspan="4">Academic Report Card</th>
                 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Name</td>
                    <td><%=nm%></td>
                </tr>
                <tr>
                    <td>Class</td>
                    <td><%=cls%></td>
                </tr>
                <tr>
                    <td>Roll no</td>
                    <td><%=rol%></td>
                </tr>
                 <tr>
                    <td>Marks obtained in English</td>
                    <td><%=eng%></td>
                </tr>
                 <tr>
                    <td>Marks obtained in Math</td>
                    <td><%=mat%></td>
                </tr>
                <tr>
                    <td>Marks Obtained in Science</td>
                    <td><%=sci%></td>
                </tr>
                <tr>
                    <td>Marks Obtained in Social science</td>
                    <td><%=soc%></td>
                </tr>
                 <tr>
                    <td>Marks Obtained in Hindi</td>
                    <td><%=hin%></td>
                </tr>
                 <tr>
                    <td>Total marks(out of 500)</td>
                    <td><%=(eng+mat+sci+soc+hin)%></td>
                </tr>
                 <tr>
                    <td>Percentage</td>
                    <td><%=(eng+mat+sci+soc+hin)/5%></td>
                </tr>
            </tbody>
        </table>

        
    </center>
    


    </body>
</html>
