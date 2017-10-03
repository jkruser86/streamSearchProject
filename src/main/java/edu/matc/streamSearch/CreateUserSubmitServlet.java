package edu.matc.streamSearch;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (
        name = "submit",
        urlPatterns = {"/submit"}
)
public class CreateUserSubmitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("user");
        String password = req.getParameter("pass");
        String password2 = req.getParameter("pass2");
        String email = req.getParameter("email");

        /** if (!password.equals(password2)) {
            Add code to pass back to user create page
        } */

        System.out.println("userName: " + userName);
        System.out.println("password: " + password);
        System.out.println("password2: " + password2);
        System.out.println("email: " + email);

        //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");

        //dispatcher.forward(req, resp);
    }
}
