
<%@page import="java.sql.ResultSet" %>

<link rel="stylesheet" href="res/Site.css">
<%
    HttpSession s=request.getSession(false);
    if(s==null){
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        out.print("<p>Login again</p>");
    }
    else{
    %>
<center>
    <h1>Candidate List</h1>
    <hr>
</center>

<table border="1" width="50%" align="center">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Party</td>
        <td>Age</td>
        <td>No of Votes</td>
        <td>Status</td>
    </tr>
    <%
      String q="select * from votingsystem where party is not null";
      ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
      while(rs.next()){
          String id=rs.getString(1);
          String nm=rs.getString(2);
          String party=rs.getString(4);
          String age=rs.getString(5);
          String votes=rs.getString(6);
          String st=rs.getString(7);
          
      
    %>
    <tr>
        <th><%=id%></th>
        <th><%=nm%></th>
        <th><%=party%></th>
        <th><%=age%></th>
        <th><%=votes%></th>
        <th><%=st%></th>
    </tr>
    
    <% } %>
</table>
    


</pre>
<% } %>