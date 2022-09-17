package db;

import entity.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBServices implements IDBServices{
    @Override
    public List<Discipline> getAllActiveDisciplines() {
        ArrayList<Discipline> disciplines = new ArrayList<>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM discipline where status = '1'");
            while (rs.next()){
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }

        } catch (Exception e){
            e.printStackTrace();
        }

        return disciplines;
    }

    @Override
    public void createDiscipline(String discipline) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("INSERT INTO `discipline` (`discipline`) VALUES ('" + discipline +"');");

        } catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public Discipline getDisciplineById(String id) {
        return null;
    }

    @Override
    public void modifyDiscipline(String id, String newDiscipline) {

    }

    @Override
    public void deleteDiscipline(String id) {

    }

    @Override
    public List<Student> getAllActiveStudent() {
        return null;
    }

    @Override
    public void createStudent(String surname, String name, String group, String date) {

    }

    @Override
    public Student getStudentById(String id) {
        return null;
    }

    @Override
    public void modifyStudent(String id, String nesSurname, String newName, String newGroup, String newDate) {

    }

    @Override
    public void deleteStudent(String id) {

    }

    @Override
    public List<Term> getAllActiveTerms() {
        return null;
    }

    @Override
    public List<Discipline> getDisciplinesByTerm(String idTerm) {
        return null;
    }

    @Override
    public void createTerm(String duration, String idsDisciplines) {

    }

    @Override
    public Term getTermById(String id) {
        return null;
    }

    @Override
    public void modifyTerm(String id, String newDuration, String newIdsDisciplines) {

    }

    @Override
    public void deleteTerm(String id) {

    }

    @Override
    public List<Mark> getMarks(String idStudent, String idTerm) {
        return null;
    }

    @Override
    public List<Role> getAllActiveRoles() {
        return null;
    }

    @Override
    public boolean canLogin(String login, String password, String idRole) {
        return false;
    }
}
