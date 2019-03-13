<%-- 
    Document   : delete_asset
    Created on : 4 Dec, 2018, 10:40:13 AM
    Author     : pooji
--%>

<%@page import="main.connects"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PINE WORLD....ADMIN</title>
        <link rel="icon" href="../images/favicon.jpg" type="image/gif" sizes="16x16">
    </head>
    <body>
        <%
            String id=request.getParameter("a");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("update student set round1=1,status=0 where id=?");
                    ps.setInt(1, Integer.parseInt(id));
                    int s=ps.executeUpdate();
                    if(s>0)
                    {
                        response.sendRedirect("round1.jsp");
                    }
            %>
    </body>
</html>
