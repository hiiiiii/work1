
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet" %>
<body bgcolor="lightyellow">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="res/Site.css">
<% 
    HttpSession s=request.getSession(false);
    if(s!=null && s.getAttribute("id")!=null){
        String u=(String)s.getAttribute("id");
    %>
    
<center>
    <h1>Candidate List</h1>
     <h2>Welcome: <%=u%> </h2>  
    <hr>
</center>
<%! String a; %>
<%
    
        
        String q1="select * from votingsystem where name='"+u+"'";
        ResultSet rs1=jdbc.DAOLayerDemo.selectData(q1);
        if(rs1.next()){
          String st=rs1.getString(7);
          a=st;
        }
 %>
 <br>
<table border="1" width="50%" align="center">
    <tr>
        <td><center>Id</center></td>
<td><center>Name<hr></center></td>
<td><center>Party<hr></center></td>
<td><center>Age<hr></center></td>
<td><center>To Vote</center><hr></td>
</tr><hr>
    <%
      String q="select * from votingsystem where party is not null";
      ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
      while(rs.next()){
          String id=rs.getString(1);
          String nm=rs.getString(2);
          String party=rs.getString(4);
          String age=rs.getString(5);
                    
    %>
    <tr>
        <th><%=id%></th>
        <th><%=nm%></th>
        <th><%=party%></th>
        <th><%=age%></th>
        <% 
            if(a.equals("active")){
                
        %>
        <th><a href="voting.jsp?mid=<%=id%>" onclick="return confirm('Sure to vote?')"><img src="VOTE1.jpg" width="40" height="40"/></a></th>
        <% }
            else{
                
    %>
        <th>--status inactive--</th>
        <% } %>
    </tr>
    <% } %>
</table>
    
<br>
<hr>
<c:if test="${requestScope.msg ne null}">
    ${requestScope.msg}
</c:if>

<%
    }    
    else{
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        out.print("<h3><font color='red'>Login again</font></h3>");
    }
%>

</body>
    
    