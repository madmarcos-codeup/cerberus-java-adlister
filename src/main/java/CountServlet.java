import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    private int counter = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reset = request.getParameter("reset");

        if(reset != null) {
            counter = 0;
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body><p>counter is now " + counter + "</p></body></html>");
        counter++;
    }
}
