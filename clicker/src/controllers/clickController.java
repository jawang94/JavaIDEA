package controllers;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "clickController")
public class clickController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String count = request.getParameter( "click");
        if (session.getAttribute("count") == null) {
            session.setAttribute("count", count);
        }
        else {
            int sessionCount = Integer.parseInt(session.getAttribute("count").toString());
            sessionCount++;
            session.setAttribute("count", sessionCount);
        }

        request.setAttribute("clicks", session.getAttribute("count"));
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
