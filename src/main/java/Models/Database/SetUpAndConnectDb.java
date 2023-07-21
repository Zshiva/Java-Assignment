package Models.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class SetUpAndConnectDb {
    private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/";
    private String username = "root";
    private String password = "";

    public static void main(String[] args) throws SQLException {
        SetUpAndConnectDb st = new SetUpAndConnectDb();
        st.setupAndConnectionDb();
    }

    public Connection setupAndConnectionDb() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(this.url, this.username, this.password);
            String query = "CREATE DATABASE IF NOT EXISTS WEBAPP";
            Statement st = this.connection.createStatement();
            st.executeUpdate(query);

        } catch (ClassNotFoundException var1) {
            System.out.println(var1);
        } catch (SQLException var2) {
            System.out.println(var2);
        }
        return this.connection;
    }
}
