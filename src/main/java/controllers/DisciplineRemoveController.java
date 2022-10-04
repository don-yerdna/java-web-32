package controllers;

import db.DBServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisciplineRemoveController", urlPatterns = "/discipline-remove")
public class DisciplineRemoveController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DBServices dbServices = new DBServices();
        if (dbServices.notUsedDiscipline(id)) dbServices.deleteDiscipline(id);
        resp.sendRedirect("/disciplines");
    }
}

