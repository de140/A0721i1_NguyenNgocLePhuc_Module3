package controller;

import bean.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletLogin", urlPatterns = "/login")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        if (userName.equals("admin@gmail.com") && password.equals("admin")) {
            System.out.println("đăng nhập thành công");
            session.setAttribute("session_login", userName);
            response.sendRedirect("/customer");
        } else {
            System.out.println("đăng nhập thất bại");
            request.setAttribute("message" , "Wrong username or password, please re-enter");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            default:
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;

        }
    }
}
