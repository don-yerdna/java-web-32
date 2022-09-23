package controllers;

import db.DBServices;
import entity.Discipline;
import entity.Term;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TermsController", urlPatterns = "/terms")
public class TermsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBServices dbServices = new DBServices();
        List<Term> terms = dbServices.getAllActiveTerms();
        req.setAttribute("terms", terms);
        req.getRequestDispatcher("WEB-INF/terms.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBServices dbServices = new DBServices();
        List<Term> terms = dbServices.getAllActiveTerms();
        req.setAttribute("terms", terms);

        String id = req.getParameter("id");
        Term term = dbServices.getTermById(id);
        req.setAttribute("term", term);
        List<Discipline> disciplines= dbServices.getDisciplinesByTerm(id);
        req.setAttribute("disciplines",disciplines);
        req.getRequestDispatcher("WEB-INF/terms.jsp").forward(req, resp);
    }
}
