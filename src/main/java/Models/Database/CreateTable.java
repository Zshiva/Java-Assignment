package Models.Database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


public class CreateTable {
        private Connection connection;
        private String usequery = "USE WEBAPP;";

        public CreateTable(Connection connection) {
            this.connection = connection;
            this.createUserTable();
        }
    public static void main(String[] args) throws SQLException {
        CreateTable ct= new CreateTable(new SetUpAndConnectDb().setupAndConnectionDb());

    }
    // Created User Table to store user data
    public void createUserTable() {
        String sql = "CREATE TABLE IF NOT EXISTS users (" +
                "id INT AUTO_INCREMENT PRIMARY KEY," +
                "name VARCHAR(50) NOT NULL," +
                "username VARCHAR(50) NOT NULL," +
                "email VARCHAR(100) NOT NULL," +
                "password VARCHAR(100) NOT NULL," +
                "address VARCHAR(100) NOT NULL" +
                ");";

        try {
            Statement s1 = this.connection.createStatement();
            s1.executeUpdate(this.usequery);
            s1.executeUpdate(sql);
        } catch (SQLException var3) {
            var3.printStackTrace();
        }
    }
}

