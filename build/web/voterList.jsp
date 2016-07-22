
<%@page import="java.sql.ResultSet" %>

<link rel="stylesheet" href="res/Site.css">

<center>
    <h1>Voter List</h1>
    <hr>
</center>

<table border="1" width="50%" align="center">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Age</td>
        <td>Status</td>
        <td>Role</td>
    </tr>
    <%
      String q="select * from votingsystem where party is null";
      ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
      while(rs.next()){
          String id=rs.getString(1);
          String nm=rs.getString(2);
          String age=rs.getString(5);
          String st=rs.getString(7);
          String role=rs.getString(8);
      
    %>
    <tr>
        <th><%=id%></th>
        <th><%=nm%></th>
        <th><%=age%></th>
        <th><%=st%></th>
        <th><%=role%></th>
    </tr>
    
    <% } %>
</table>