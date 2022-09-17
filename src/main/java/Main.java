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
        services.createDiscipline("java программирование");
        List<Discipline> disciplines = services.getAllActiveDisciplines();
        System.out.println();

    }
}
