import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {
    // this is a global for all requests until server is restarted
    private int counter = 0;

    // doGet executes PER REQUEST
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws IOException {
        int localCounter = 0;

        System.out.println("hello world 234");

        // explain what, why, how web servers
        //  // e.g., the request/response cycle

        // what is a servlet
        // Java Servlet introduced in 1996 (not by Sun/Oracle). now Jakarta servlets
        // your java program that produces the dynamic web content a requestor receives
        // not the web server exactly. it runs on top of a java web server framework: tomcat

        // what is tomcat
        // a java web server framework. there are several and tomcat is old but widely used

        // servlet annotations that tell tomcat important stuff about your classes
        // name, urlPattern
        // method names doGet, doPost
        // what about more than 1 get method for a urlPattern?
        // parameters don't count as a separate get method
        // what about more than 1 urlPattern for a servlet?
        String firstName = req.getParameter("firstname");
        System.out.println(firstName);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        if(firstName == null) {
            out.println("<html><h1>Hello, World!</h1></html>");
        } else {
            out.println("<html><h1>Hello, " + firstName + "!</h1></html>");
        }

        System.out.println("counter = " + counter);
        counter++;

        System.out.println("local counter = " + localCounter);
        localCounter++;

        // paste the hello-world code and run it
        // explain local accessibility
        // how can we make this code open to the public?
        // 1. a server has to host it
        // 2. server has to be publicly accessible
        // 3. DNS has to point a host name to the server (optional)

        // query parameter
        // add a "name" parameter and the logic to acknowledge if it is there
        // one doGet method for all the variations we may want for the urlPattern
        // ick that's fat method
        // add an "age" parameter
        String ageAsString = req.getParameter("age");
        if(ageAsString != null) {
            int age = Integer.parseInt(req.getParameter("age"));
            System.out.println(age);
        } else {
            System.out.println("you did not specify an age");
        }

        // point out form data access via getParameter

        // make an instance variable and have it persist between requests
        // restart the server to see it reset

        // add a query parameter to cause a redirect
        // response.sendRedirect("https://www.google.com");
        if(req.getParameter("outtahere") != null) {
            response.sendRedirect("https://www.google.com");
        }

    }
}
