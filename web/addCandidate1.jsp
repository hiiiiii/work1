<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>

<link rel="stylesheet" href="res/Site.css">
<s:setDataSource driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/kiit"
                    user="root" password="mysql1" />
<%
    String yr=request.getParameter("Year");
    int y=Integer.parseInt(yr);
    int age=2016-y;
%>

<s:update>insert into votingsystem(name,pass,party,age) values('${param.name}','${param.pass}','${param.party}',${age})</s:update>
<c:set var="msg1" value="registered successfully" scope="request"/>

<jsp:forward page="index.jsp"/>