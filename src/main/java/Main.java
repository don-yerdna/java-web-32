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

        //List<Discipline> disciplines = services.getAllActiveDisciplines();

   //     services.modifyDiscipline("3","Политология1");
        //Discipline dis = services.getDisciplineById("3");
       services.modifyStudent("15","sss","xxx","3434","2011-09-02 00:00:00.000");
        System.out.println();

    }
}
