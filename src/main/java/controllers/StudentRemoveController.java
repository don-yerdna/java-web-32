package controllers;

import db.DBServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentRemoveController", urlPatterns = "/student-remove")
public class StudentRemoveController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DBServices dbServices = new DBServices();
        String[] ids = id.split(",");
        for (String idD : ids) {
            dbServices.deleteStudent(idD);
        }
        resp.sendRedirect("/students");
    }
}

