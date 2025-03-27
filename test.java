import java.sql.Connection;
import java.sql.DriverManager;

public class test {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/fitmovedb";
        String user = "root";
        String password = "26070115";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("Conexão bem-sucedida!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
