
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="res/Site.css"/>
<center>
    <h2>Candidate Registration form</h2>
    <hr>
</center>
<fieldset>
<legend>Fill Details</legend>
<form action="addCandidate.jsp" method="post">
 <pre style="font-family: verdana">   
 Name                 : <input type="text" name="name"/>

 Password           : <input type="password" name="pass"/>

 Confirm Password: <input type="password" name="cpass"/>
 </pre>

    Date of Birth   :  <select name="date">
            <option value="">---select date---</option>
            <% for(int i=1;i<=30;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
</select>

          <select name="month">
            <option value="">---select month---</option>
            <% for(int i=1;i<=12;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
</select>

           <select name="Year">
            <option value="">---select year---</option>
            <% for(int i=1970;i<=2000;i++){ %>
             <option value="<%=i%>"><%=i%></option>
             <% } %>
           </select><br><br>
           <pre style="font-family: verdana">
 Party                  : <input type="text" name="party"/>   <br><br>
           </pre>
        <input type="submit" value="Register"/>
   
</form>
</fieldset>

<a href="index.jsp">Back</a>
<hr>
<%--<%=request.getAttribute("msg") %>--%>
<c:if test="${requestScope.msg ne null}">
    ${requestScope.msg}
</c:if>