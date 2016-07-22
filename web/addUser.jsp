
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! 
    int n;
%>
<%
   String p=request.getParameter("pass");
   String cp=request.getParameter("cpass");
   
   String d=request.getParameter("date");
   String m=request.getParameter("month");
   String y=request.getParameter("Year");
   
    if(d=="" || m=="" || y==""){
        
     %>
     <c:set var="msg" value="Fill date of birth" scope="request"/>
                <jsp:forward page="addUserForm.jsp"/>
                
     <%}
        else if(cp.equals(p)){
        int yearofDOB=Integer.parseInt(y);
        int age=2016-yearofDOB;
        n=age;
        if(age>17){
            String nm=request.getParameter("name");
        
            String q="insert into votingsystem(name,pass,age,status,role) values('"+nm+"','"+p+"',"+age+",'inactive','user')";
            int ar=jdbc.DAOLayerDemo.updateData(q);
            if(ar!=-1 && ar!=0){
                
                //request.setAttribute("msg","successfully Registered.");
                %>
                 <c:set var="msg" value="successfully registered" scope="request"/>
                <jsp:forward page="index.jsp"/>
            <%}
        }
        else{
            %>
            <c:set var="msg" value="not eligible" scope="request"/>
                <jsp:forward page="addUserForm.jsp"/>
            <%
        }
    }
    else if(!cp.equals(p)){
               //RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
               // rd.include(request, response);
               %>
               <c:set var="msg" value="Password did not match" scope="request"/>
                <jsp:forward page="addUserForm.jsp"/>
            <%}
    else{
                %>
                <c:set var="msg" value="not eligible" scope="request"/>
                <jsp:forward page="addUserForm.jsp"/>
            <%
}
%>
