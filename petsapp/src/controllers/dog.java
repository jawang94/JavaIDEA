package controllers;

import models.Dog;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ShowDog")
public class dog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String breed = request.getParameter("breed");
        int weight = Integer.parseInt(request.getParameter("weight"));
        // Create model
        Dog dog = new Dog(name, breed, weight);
        // Set Model for view
        request.setAttribute("dog", dog);
        request.setAttribute("name", request.getParameter("name"));
        request.setAttribute("breed", request.getParameter("breed"));
        request.setAttribute("weight", request.getParameter("weight"));
        // Let view handle the request
        request.getRequestDispatcher("/showDog.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
