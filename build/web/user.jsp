
<link rel="stylesheet" href="res/Site.css"/>
<%@page import="java.sql.ResultSet" %>

<body bgcolor='lightyellow'>
<center>
    <h1>User's Page</h1>
    <hr>
    <marquee>
        <h3>Voting lines open</h3>
    </marquee>
    <hr>
</center>

<%
    HttpSession s=request.getSession(false);
    if(s!=null && s.getAttribute("id")!=null){
        String u=(String)s.getAttribute("id");
        String q="select * from votingsystem where name='"+u+"'";
        ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
        if(rs.next()){
        String st=rs.getString(7);
%>
<div style="margin-left:100px">
     <h3 style="float: right; margin-right:50px">Status: <%=st%></h3>
    <h2>Welcome: <%=u%> </h2>                  
<% } %>
<br>
<h3><a href="candidateListUser.jsp">Candidates List</a></h3> 
<br>

  <h3><a href="index.jsp">Logout</a></h3><br>
</div>
    <% }
       else{
           RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
       }
    %>
</body>