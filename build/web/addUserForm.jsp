
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="res/Site.css"/>
<center>
    <h2>User Registration form</h2>
    <hr>
</center>
<fieldset>
<legend>Fill Details</legend>
<form action="addUser.jsp" method="post">
    <pre style="font-family: verdana">
        Name               : <input type="text" name="name"/>

      Password           : <input type="password" name="pass"/>

      Confirm Password: <input type="password" name="cpass"/>

      Date of Birth   : 
           Select Date :   <select  name="date">
            <option value=""></option>
            <% for(int i=1;i<=30;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
</select>

          Select Month :  <select name="month">
            <option value=""></option>
            <% for(int i=1;i<=12;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
</select>

           Select Year :   <select name="Year">
            <option value=""></option>
            <% for(int i=1970;i<=2000;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
</select>
   

        <input type="submit" value="Register"/>
    </pre>
</form>
</fieldset>

<a href="index.jsp">Back</a>
<hr>
<%--<%=request.getAttribute("msg") %>--%>
<c:if test="${requestScope.msg ne null}">
    ${requestScope.msg}
</c:if>