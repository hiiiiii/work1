<%
    String k="update votingsystem set last_login=now()";
    int ar=jdbc.DAOLayerDemo.updateData(k);
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        out.print("<p>Logout Successfull</p>");
    %>
    