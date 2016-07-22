
<%@page import="java.sql.ResultSet"%>
<link rel="stylesheet" href="res/Site.css">

<body bgcolor='lightyellow'>
<center>
    <h1>Administrator's Page</h1>
    <hr><br>
</center>

<%
    HttpSession s=request.getSession(false);
    if(s!=null && s.getAttribute("id")!=null){
        String u=(String)s.getAttribute("id");
        String l="select * from votingsystem where name='"+u+"'";
        ResultSet rs=jdbc.DAOLayerDemo.selectData(l);
        if(rs.next()){
        String d=rs.getString(9);
%>
<div style="float:right;margin-right:30px">
    <fieldset>  <h2>YOUR LAST LOGIN IS:   </h2>
       <%=d%>
    </fieldset>
</div>
<% } %>
<div style="margin-left:120px;">
    <h2>Welcome:[<%=u%>] </h2>

      <h3><a href="candidateList.jsp">Candidates List</a></h3>
      <br>

       <h3><a href="voterList.jsp">Voters list</a></h3>
     <br>
    <h3><a href="logout.jsp">Logout</a></h3>
 </div>  
    <% } %>
</body>