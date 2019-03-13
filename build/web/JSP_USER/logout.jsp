<%-- 
    Document   : logout
    Created on : 7 Dec, 2018, 7:09:45 AM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER</title>
    </head>
    <body>
        <%
            HttpSession s=request.getSession();
          if(s!=null)
          {
              s.invalidate();
              response.sendRedirect("home.jsp");
          }
            %>
    </body>
</html>
