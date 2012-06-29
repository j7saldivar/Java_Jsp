
Para que lo utilicen a manera de ejemplo. A continuaci�n se muestra el 
c�digo de un servlet que produce XML como respuesta:

---------------------------------------------------------------------
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class xmlfromscratch extends HttpServlet 
{
  public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
    throws IOException, ServletException
  {
    response.setContentType("text/xml");
    PrintWriter out = response.getWriter();
    
    out.println("<?xml version=\"1.0\"?>");
    out.println("<greeting language=\"en_US\">");
    out.println("  Hello, World!");
    out.println("</greeting>");
  }
}
---------------------------------------------------------------------



La salida producida por este servlet ser�a:

------------------------------------------------
<?xml version="1.0"?><greeting>
  Hello, World!
</greeting>
------------------------------------------------