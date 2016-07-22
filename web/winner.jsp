
<%@page import="java.sql.ResultSet"%>

<%
  String q1="select * from votingsystem where votes=(select max(votes) from votingsystem)";
  ResultSet rs=jdbc.DAOLayerDemo.selectData(q1);
  if(rs.next()){
      String id=rs.getString(1);
      String nm=rs.getString(2);
      String party=rs.getString(4);
      String votes=rs.getString(6);

%>


<center>
<h2>Leading Candidate:</h2>
<hr>
<h3>
     Name: <%=nm%><br>
      ID : <%=id%><br>
    Party:<%=party%><br>
    No of Votes:<%=votes%><br><hr>
</h3>
<% RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
            %>
            
</center>
<% } %>
