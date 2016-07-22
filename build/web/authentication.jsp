<%@page import="java.sql.ResultSet" %>

<link rel="stylesheet" href="res/Site.css">
        

<%
    String u=request.getParameter("id");
    String p=request.getParameter("pass");
   
    u.replace("'", "\\'");
    p.replace("'", "\\'");
    
    String q="select * from votingsystem where name='"+u+"' and pass='"+p+"'";
   
    ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
    if(rs.next()){
        
        //hs.setAttribute("id", u);
        String s=rs.getString(8);
        if(s.equals("admin")){
            HttpSession hs=request.getSession();
            hs.setAttribute("id", u);
            RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
            rd.forward(request, response);
        }
        else{
            HttpSession hs1=request.getSession();
            hs1.setAttribute("id", u);
            hs1.setMaxInactiveInterval(1*60);
            RequestDispatcher rd1=request.getRequestDispatcher("user.jsp");
            rd1.forward(request,response);
        }
    }
    else{
        if(u=="" || p==""){
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
                out.print("<h3><font color='red'>Please fill login id or password</font></h3>");
                 }
          else{
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);   
            out.print("<h3><font color='red'>Invalid loginid and password</font></h3>");
         }
    }
    %>
    
    