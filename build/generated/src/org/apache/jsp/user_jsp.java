package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"res/Site.css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body bgcolor='lightyellow'>\n");
      out.write("<center>\n");
      out.write("    <h1>User's Page</h1>\n");
      out.write("    <hr>\n");
      out.write("    <marquee>\n");
      out.write("        <h3>Voting lines open</h3>\n");
      out.write("    </marquee>\n");
      out.write("    <hr>\n");
      out.write("</center>\n");
      out.write("\n");

    HttpSession s=request.getSession(false);
    if(s!=null && s.getAttribute("id")!=null){
        String u=(String)s.getAttribute("id");
        String q="select * from votingsystem where name='"+u+"'";
        ResultSet rs=jdbc.DAOLayerDemo.selectData(q);
        if(rs.next()){
        String st=rs.getString(7);

      out.write("\n");
      out.write("\n");
      out.write("    <h2>Welcome: ");
      out.print(u);
      out.write(" </h2>                   <h3>Status: ");
      out.print(st);
      out.write("</h3>\n");
 } 
      out.write("\n");
      out.write("\n");
      out.write("<h3><a href=\"candidateListUser.jsp\"><b>Candidates List</h3></b></a></h3> <br><br>\n");
      out.write("  ----------------------------------------\n");
      out.write("\n");
      out.write("  <h3><a href=\"index.jsp\">Logout</a></h3><br>\n");
      out.write("\n");
      out.write("    ");
 }
       else{
           RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
       }
    
      out.write("\n");
      out.write("</body>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
