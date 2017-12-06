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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>clariFLY</title>\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"index.css\"> <!-- Connects a style sheet to code-->\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    <body> <!-- all real code goes in body-->\n");
      out.write("           <img id = \"logo\" src=\"clariFLY.png\" alt=\"logo\">\n");
      out.write("        <div align=\"center\" class = \"formholder\">  <!-- a div is just a grouping, class is just a group name for CSS styling-->\n");
      out.write("            <form class = \"form\" action =\"signin\" method = \"post\"> <!-- action is what page its going to next-->\n");
      out.write("                <input id=\"fix\" class = \"textbox\" type = \"text\" name=\"username\" placeholder=\"user\" maxlength=\"15\"> <br> <!-- \"username is just text, input type is an input (can be button/text/etc), name is variable name-->\n");
      out.write("                <input class = \"textbox\" type = \"password\" name=\"password\" placeholder=\"password\" maxlength=\"15\"><br>\n");
      out.write("                <input class = \"button\" type =\"submit\" value=\"Sign In\" >\n");
      out.write("                <button type = \"button\" class = \"button\" onclick=\"window.location='createAccount.jsp'\">Create Account</button> <br><br><!-- button to go to create account page-->\n");
      out.write("                Forgot Password <br> <br>\n");
      out.write("                ");
 if(request.getAttribute("err") != null){ 
      out.write("\n");
      out.write("              INCORRECT USER OR PASSWORD \n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("             ");
 if(request.getAttribute("createdAcc") != null){ 
      out.write("\n");
      out.write("              ACCOUNT MADE \n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
