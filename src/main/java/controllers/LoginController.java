package controllers;

import db.DBServices;
import entity.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "LoginController",urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBServices dbServices = new DBServices();
        List<Role> roles = dbServices.getAllActiveRoles();
        req.setAttribute("roles",roles);
        req.getRequestDispatcher("WEB-INF/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String id = req.getParameter("role");
        DBServices dbServices = new DBServices();
        if (login == null || login.equals("")||
        password == null || password.equals("")){
            req.setAttribute("error",1);
            List<Role> roles = dbServices.getAllActiveRoles();
            req.setAttribute("roles",roles);
            req.getRequestDispatcher("WEB-INF/login.jsp").forward(req,resp);
        }
        if (dbServices.canLogin(login,password,id)){
            req.getSession().setAttribute("isLogin", true);
            req.getSession().setAttribute("role", id);
            req.getSession().setAttribute("login", login);
            resp.sendRedirect("/");
        } else {
            req.setAttribute("error",2);
            List<Role> roles = dbServices.getAllActiveRoles();
            req.setAttribute("roles",roles);
            req.getRequestDispatcher("WEB-INF/login.jsp").forward(req,resp);
        }
    }
}
