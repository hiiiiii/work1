package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<link rel=\"stylesheet\" href=\"res/Site.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n");
      out.write("<body style=\"background:#cce6ff\"><nav class=\"w3-navbar container\" style=\"background:#cce6ff; color:#254d74; font-family:verdana\">\n");
      out.write("        <center>\n");
      out.write("            <h2 >Online Polling System</h2><hr>\n");
      out.write("\n");
      out.write("        </center>\n");
      out.write("    </nav>\n");
      out.write("    <br>  <br><br>                                     \n");
      out.write("    <fieldset style=\"background:#254d74; color:#ffffff; font-family:verdana; margin-left:40px; float:left; width: 40%;height: 40%; margin:10px\" >                                                     \n");
      out.write("        <legend style=\"background:#254d74; color:#ffffff\">Login Details</legend>                                 \n");
      out.write("        <form action=\"authentication.jsp\" method=\"post\">     \n");
      out.write("            <br><br>\n");
      out.write("            <center> <b>Login Id</b> : <input type=\"text\" name=\"id\"/></center>  <br>  <br>          \n");
      out.write("\n");
      out.write("            <center><b>Password</b> : <input type=\"password\" name=\"pass\"/></center> <br>  <br>    \n");
      out.write("\n");
      out.write("            <center><input type=\"submit\" value=\"Login\"/>  <br><br></center>                   \n");
      out.write("        </form>                                                          \n");
      out.write("    </fieldset >                                                     \n");
      out.write("\n");
      out.write("\n");
      out.write("    <fieldset style=\" color:#254d74; float:right; width: 40%;height: 40%; margin-left:80px; margin-right: 20px; margin-top: 10px\">\n");
      out.write("        <legend>Register</legend>\n");
      out.write("        <br><br>\n");
      out.write("        <center>  <a href=\"addCandidateForm.jsp\"><b><h4>Register as Candidate</h4></b></a></center><br><br>\n");
      out.write("\n");
      out.write("        <center>  <a href=\"addUserForm.jsp\"><b><h4>Register as User</h4></b></a></center><br>\n");
      out.write("    </fieldset>\n");
      out.write("    <br><br><br><br><br><br><br><br>    <br><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("<hr><center>\n");
      out.write("    <form action=\"winner.jsp\">\n");
      out.write("    \n");
      out.write("    <input type=\"submit\" value=\"View Winner\"/>\n");
      out.write("    \n");
      out.write("    </form></center>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.msg ne null}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("    \n");
      out.write("    <h3> <font color=\"green\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </font></h3>\n");
      out.write("</c:if>\n");
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
