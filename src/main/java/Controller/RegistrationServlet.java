package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import Models.Database.SetUpAndConnectDb;

@WebServlet("/Views/register")
public class RegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String useQuery = "USE WEBAPP";

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        RequestDispatcher dispatcher = null;

        try{
            Connection conn = new SetUpAndConnectDb().setupAndConnectionDb();
            Statement st = conn.createStatement();
            st.executeUpdate(useQuery);
            PreparedStatement ps = conn.prepareStatement("Insert into users(name, username, email, password, address) values(?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, address);

            int rowcount = ps.executeUpdate();
            dispatcher = request.getRequestDispatcher("registration.jsp");
            if(rowcount > 0){
                request.setAttribute("status", "success");
            }else{
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);

        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
