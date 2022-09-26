package controllers;

import db.DBServices;
import entity.Mark;
import entity.Student;
import entity.Term;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "StudentProgressController", urlPatterns = "/student-progress")
public class StudentProgressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBServices dbServices = new DBServices();
        String idStudent = req.getParameter("idStudent");
        Student student = dbServices.getStudentById(idStudent);
        List<Term> terms = dbServices.getAllActiveTerms();
        req.setAttribute("idStudent",idStudent);
        req.setAttribute("student", student);
        req.setAttribute("terms", terms);
        req.getRequestDispatcher("WEB-INF/student-progress.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBServices dbServices = new DBServices();
        List<Term> terms = dbServices.getAllActiveTerms();
        req.setAttribute("terms", terms);

        String idStudent = req.getParameter("idStudent");
        Student student = dbServices.getStudentById(idStudent);
        String idTerm = req.getParameter("idTerm");
        List<Mark> marks = dbServices.getMarks(idStudent,idTerm);
        int count = 0;
        int mark = 0;
        for (Mark m:marks){
            mark = mark + m.getMark();
            count++;
        }
        double res = count==0?0:(double)mark/count;
        String averageMark = String.format("%.2f",res);
        req.setAttribute("averageMark",averageMark);
        req.setAttribute("idStudent",idStudent);
        req.setAttribute("student", student);
        req.setAttribute("marks",marks);
        req.getRequestDispatcher("WEB-INF/student-progress.jsp").forward(req, resp);
    }
}
