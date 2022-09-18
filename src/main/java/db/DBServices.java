package db;

import entity.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBServices implements IDBServices {
    @Override
    public List<Discipline> getAllActiveDisciplines() {
        ArrayList<Discipline> disciplines = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM discipline where status = '1'");
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return disciplines;
    }

    @Override
    public void createDiscipline(String discipline) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("INSERT INTO `discipline` (`discipline`) VALUES ('" + discipline + "');");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public Discipline getDisciplineById(String id) {
        Discipline discipline = new Discipline();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM discipline where id = '" + id + "'");
            while (rs.next()) {
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return discipline;
    }

    @Override
    public void modifyDiscipline(String id, String newDiscipline) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `discipline` SET `discipline` = '" + newDiscipline + "' WHERE (`id` = '" + id + "')");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteDiscipline(String id) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `discipline` SET `status` = '0' WHERE (`id` = '" + id + "')");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Student> getAllActiveStudent() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM student where status = '1'");
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSurname(rs.getString("surname"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getDate("date"));
                students.add(student);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public void createStudent(String surname, String name, String group, String date) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("INSERT INTO `student` (`surname`,`name`,`group`,`date`) VALUES ('" + surname + "','" + name + "','" + group + "','" + date + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Student getStudentById(String id) {
        Student student = new Student();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM student where id = '" + id + "'");
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setSurname(rs.getString("surname"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getDate("date"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return student;
    }

    @Override
    public void modifyStudent(String id, String newSurname, String newName, String newGroup, String newDate) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `student` SET `surname` = '" + newSurname + "', `name` = '" + newName + "', `group` = '" + newGroup + "', `date` = '" + newDate + "' WHERE (`id` = '" + id + "');");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteStudent(String id) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `student` SET `status` = '0' WHERE (`id` = '" + id + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Term> getAllActiveTerms() {
        ArrayList<Term> terms = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM term where status = '1'");
            while (rs.next()) {
                Term term = new Term();
                term.setId(rs.getInt("id"));
                term.setTerm(rs.getString("term"));
                term.setDuration(rs.getString("duration"));
                term.setDisciplines(getDisciplinesByTerm(String.valueOf(rs.getInt("id"))));
                terms.add(term);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return terms;
    }

    @Override
    public List<Discipline> getDisciplinesByTerm(String idTerm) {
        ArrayList<Discipline> disciplines = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select discipline.id, discipline.discipline " +
                    "from discipline inner join term inner join term_discipline " +
                    "on discipline.id = term_discipline.id_discipline " +
                    "and term.id = term_discipline.id_term where term.id = " + idTerm);
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplines;
    }

    @Override
    public void createTerm(String duration, String idsDisciplines) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select id form term");
            int newId = 0;
            while (rs.next()) {
                if (rs.getInt("id") > newId) newId = rs.getInt("id") + 1;
            }
            stmt.execute("INSERT INTO `term` (`term`,`duration`) VALUES ('Семестр" + newId + "','" + duration + "');");

            String[] idDisc = idsDisciplines.split(",");
            for (String id : idDisc) {
                stmt.execute("INSERT INTO `term_discipline` (`id_term`,`id_discipline`) VALUES ('" + newId + "','" + id + "');");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Term getTermById(String id) {
        Term term = new Term();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM term where id = '" + id + "'");
            while (rs.next()) {
                term.setId(rs.getInt("id"));
                term.setTerm(rs.getString("term"));
                term.setDuration(rs.getString("duration"));
                term.setDisciplines(getDisciplinesByTerm(id));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return term;
    }

    @Override
    public void modifyTerm(String id, String newDuration, String newIdsDisciplines) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `term` SET `duration` = '" + newDuration + "' WHERE (`id` = '" + id + "');");

            stmt.execute("DELETE FROM `term_discipline` WHERE (`id_term` = '" + id + "');");
            String[] idDisc = newIdsDisciplines.split(",");
            for (String idD : idDisc) {
                stmt.execute("INSERT INTO `term_discipline` (`id_term`,`id_discipline`) VALUES ('" + id + "','" + idD + "');");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteTerm(String id) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `term` SET `status` = '0' WHERE (`id` = '" + id + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Mark> getMarks(String idStudent, String idTerm) {
        ArrayList<Mark> marks = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select mark.id as id, mark.mark as mark, discipline.id as id_disc " +
                    "from mark inner join student inner join term_discipline " +
                    "inner join discipline inner join term " +
                    "on mark.id_student = student.id and mark.id_term_dsicipline = term_discipline.id " +
                    "and discipline.id = term_discipline.id_discipline and term.id = term_discipline.id_term " +
                    "where student.id = " + idStudent + " and term.id = " + idTerm);
            while (rs.next()) {
                Mark mark = new Mark();
                mark.setId(rs.getInt("id"));
                mark.setMark(rs.getInt("mark"));
                mark.setStudent(getStudentById(idStudent));
                mark.setTerm(getTermById(idTerm));
                mark.setDiscipline(getDisciplineById(rs.getString("id_disc")));
                marks.add(mark);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return marks;
    }

    @Override
    public List<Role> getAllActiveRoles() {
        ArrayList<Role> roles = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM role where status = '1'");
            while (rs.next()) {
                Role role = new Role();
                role.setId(rs.getInt("id"));
                role.setRole(rs.getString("role"));
                roles.add(role);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return roles;
    }

    @Override
    public boolean canLogin(String login, String password, String idRole) {
        return false;
    }
}
