<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: datquocngo
  Date: 27/11/2018
  Time: 08:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Vietnamese Dictionay</title>
  </head>
  <body>
  <%!
    Map<String, String> dic = new HashMap<>();
  %>

  <%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result == null) result = "Not found";
      PrintWriter writer = response.getWriter();
      writer.println("<html>");
      writer.println("<style type=\"text/css\">");
      writer.println("  .login {");
      writer.println("    height:250px; width:300px;");
      writer.println("    margin:0;");
      writer.println("    padding:10px;");
      writer.println("    border:1px #CCC solid;");
      writer.println("  }");
      writer.println("  .login input {");
      writer.println("    padding:5px; margin:5px");
      writer.println("  }");
      writer.println("</style>");
      writer.println("<body>");
      writer.println("<form action=\"index.jsp\" method=\"post\">");
      writer.println("  <div class=\"login\">");
      writer.println("    <h2>Vietnamese Dictionary</h2>");
      writer.println("    <input type=\"text\" name=\"search\" size=\"30\"  placeholder=\"Enter a word to Search\" />");
      writer.println("    <h4>    "+ result +" </h4>");
      writer.println("    <input type=\"submit\" value=\"Sign in\"/>");
      writer.println("  </div>");
      writer.println("</form>");
      writer.println("</body>");
      writer.println("</html>");

  %>
  </body>
</html>
