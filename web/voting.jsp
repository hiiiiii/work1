
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet" %>

<link rel="stylesheet" href="res/Site.css">

<%! String a; %>

<%
  HttpSession s=request.getSession(false);
    if(s!=null && s.getAttribute("id")!=null){
        String u=(String)s.getAttribute("id");
        String q3="select id from votingsystem where name='"+u+"'";
        ResultSet rs=jdbc.DAOLayerDemo.selectData(q3);
        if(rs.next()){
            String uid=rs.getString(1);
            a=uid;
        }
        int userid=Integer.parseInt(a);
    String i=request.getParameter("mid");
  int cid=Integer.parseInt(i);
  String q="update votingsystem set votes=votes+1 where id="+cid;
  int ar=jdbc.DAOLayerDemo.updateData(q);
  String q1="update votingsystem set status='inactive' where id="+userid;
  int ar1=jdbc.DAOLayerDemo.updateData(q1);
  if(ar>0 && ar1>0){
      
   %>
   
   <c:set var="msg" value="Successfully voted" scope="request"/>
   <jsp:forward page="candidateListUser.jsp"/>
   <%
  }
    }
  %>
  
  