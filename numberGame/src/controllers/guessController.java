package controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "guessController")
public class guessController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        double random = Math.random();
        double x = random*100;
        int y = (int)x + 1;
        if (session.getAttribute("answer") == null) {
            session.setAttribute("answer", y);
        }
        String result = new String();
        String backgroundColor = new String();
        int sessionAnswer = Integer.parseInt(session.getAttribute("answer").toString());
        int userGuess = Integer.parseInt(request.getParameter("guess"));
        if (userGuess < sessionAnswer) {
            result = "Your guess was too low!";
            backgroundColor = "red;";
        }
        else if (userGuess > sessionAnswer) {
            result = "Your guess was too high!";
            backgroundColor = "red;";
        }
        else {
            result = "Correct!";
            backgroundColor = "green;";
        }
        request.setAttribute("result",result);
        request.setAttribute("backgroundColor",backgroundColor);
        if (result == "Correct!") {
            request.getRequestDispatcher("/correct.jsp").forward(request,response);
        }
        else {
            request.getRequestDispatcher("/result.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
