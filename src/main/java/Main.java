import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main {
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_32", "root", "ghjcnjgfhjkm");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT *  FROM discipline where status = '1'");
            while (rs.next()){
                System.out.println(rs.getString("discipline"));
            }

        } catch (Exception e){
            e.printStackTrace();
        }

    }
}
