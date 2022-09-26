package controllers;

import db.DBServices;
import entity.Discipline;
import entity.DisciplineTerm;
import entity.Term;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "TermModifyController", urlPatterns = "/term-modify")
public class TermModifyController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DBServices dbServices = new DBServices();
        Term term = dbServices.getTermById(id);
        req.setAttribute("term", term);
        List<Discipline> disciplinesByTerm = dbServices.getDisciplinesByTerm(id);
        List<Discipline> disciplines = dbServices.getAllActiveDisciplines();
        List<DisciplineTerm> dDisciplines = new ArrayList<>();
        String idDis = "";
        for (Discipline dt : disciplinesByTerm) {
            if (idDis.equals("")) {
                idDis = String.valueOf(dt.getId());
            } else {
                idDis = idDis + "," + dt.getId();
            }
        }
        for (Discipline ad : disciplines) {
            DisciplineTerm discipline = new DisciplineTerm();
            discipline.setId(ad.getId());
            discipline.setDiscipline(ad.getDiscipline());
            for (Discipline dt : disciplinesByTerm) {
                if (ad.getId() == dt.getId()) {
                    discipline.setTerm(true);
                }
            }
            dDisciplines.add(discipline);
        }
        req.setAttribute("dDisciplines", dDisciplines);
        req.setAttribute("idDis", idDis);
        req.getRequestDispatcher("WEB-INF/term-modify.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String id = req.getParameter("id");
        String idDs = req.getParameter("ids");
        String duration = req.getParameter("duration");
        DBServices dbServices = new DBServices();
        dbServices.modifyTerm(id, duration, idDs);
        resp.sendRedirect("/terms");
    }
}
