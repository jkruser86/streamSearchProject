package edu.matc.streamSearch.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(
        name = "login-failure",
        urlPatterns = {"/login-failure"}
)
public class LoginFailureServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/login.jsp";

        HttpSession session = req.getSession();
        session.setAttribute("loginFailed",true);

        resp.sendRedirect(url);
        //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);

        //dispatcher.forward(req, resp);
    }
}
