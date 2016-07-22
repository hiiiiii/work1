<link rel="stylesheet" href="res/Site.css"/>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body style="background:#cce6ff"><nav class="w3-navbar container" style="background:#cce6ff; color:#254d74; font-family:verdana">
        <center>
            <h2 >Online Polling System</h2><hr>

        </center>
    </nav>
    <br>  <br><br>                                     
    <fieldset style="background:#254d74; color:#ffffff; font-family:verdana; margin-left:40px; float:left; width: 40%;height: 40%; margin:10px" >                                                     
        <legend style="background:#254d74; color:#ffffff">Login Details</legend>                                 
        <form action="authentication.jsp" method="post">     
            <br><br>
            <center> <b>Login Id</b> : <input type="text" name="id"/></center>  <br>  <br>          

            <center><b>Password</b> : <input type="password" name="pass"/></center> <br>  <br>    

            <center><input type="submit" value="Login"/>  <br><br></center>                   
        </form>                                                          
    </fieldset >                                                     


    <fieldset style=" color:#254d74; float:right; width: 40%;height: 40%; margin-left:80px; margin-right: 20px; margin-top: 10px">
        <legend>Register</legend>
        <br><br>
        <center>  <a href="addCandidateForm.jsp"><b><h4>Register as Candidate</h4></b></a></center><br><br>

        <center>  <a href="addUserForm.jsp"><b><h4>Register as User</h4></b></a></center><br>
    </fieldset>
    <br><br><br><br><br><br><br><br>    <br><br><br><br><br><br><br><br>

<hr><center>
    <form action="winner.jsp">
    
    <input type="submit" value="View Winner"/>
    
    </form></center>
    
   
    <hr>

    <c:if test="${requestScope.msg ne null}">
    
    <h3> <font color="green"> ${requestScope.msg} </font></h3>
</c:if>
</body>