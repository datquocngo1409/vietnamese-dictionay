import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

@WebServlet(name = "Search", urlPatterns = "/search")
public class Search extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("  <head>\n" +
                "    <title>Vietnamese Dictionay</title>\n" +
                "  </head>");
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
        String result =" ";
        writer.println("    <h4>    Ket qua:  </h4>");
        writer.println("    <input type=\"submit\" value=\"Sign in\"/>");
        writer.println("  </div>");
        writer.println("</form>");
        writer.println("</body>");
        writer.println("</html>");
    }
}
