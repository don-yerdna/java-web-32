import db.DBServices;
import entity.Discipline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class
Main {
    public static void main(String[] args) {
        DBServices services = new DBServices();

        List<Discipline> disciplines = services.getAllActiveDisciplines();

   //     services.modifyDiscipline("3","Политология1");
        Discipline dis = services.getDisciplineById("3");
       // services.deleteDiscipline("3");
        System.out.println();

    }
}
