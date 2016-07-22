
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   String p=request.getParameter("pass");
   String cp=request.getParameter("cpass");
   String y=request.getParameter("Year");
    int yearofDOB=Integer.parseInt(y);
    int age=2016-yearofDOB;
    String party1=request.getParameter("party");
    String q1="select party from votingsystem where party is not null";
    ResultSet rs=jdbc.DAOLayerDemo.selectData(q1);
    while(rs.next()){
        String pty=rs.getString(1);
        if(pty.equals(party1)){
            
         %>
            <c:set var="msg" value="Candidate with this party already registered" scope="request"/>
                <jsp:forward page="addCandidateForm.jsp"/>
       <% }
    }
    if(cp.equals(p) && age>34){
        String nm=request.getParameter("name");
        //String party=request.getParameter("party");
        String q="insert into votingsystem(name,pass,party,age,votes) values('"+nm+"','"+p+"','"+party1+"',"+age+",0)";
        int ar=jdbc.DAOLayerDemo.updateData(q);
        if(ar!=-1 && ar!=0){
                
                //request.setAttribute("msg","successfully Registered.");
                %>
                 <c:set var="msg" value="successfully registered" scope="request"/>
                <jsp:forward page="index.jsp"/>
            <%}
    }
    else if(age<35){
               //RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
               // rd.include(request, response);
               %>
               <c:set var="msg" value="not eligible" scope="request"/>
                <jsp:forward page="addCandidateForm.jsp"/>
            <%}
    else{
                %>
                <c:set var="msg" value="Password did not match" scope="request"/>
                <jsp:forward page="addCandidateForm.jsp"/>
            <%}
%>

