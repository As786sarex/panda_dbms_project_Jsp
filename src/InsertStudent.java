import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/InsertStudent")
public class InsertStudent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = new DbConnection("jdbc:mariadb://localhost:3306/student_database"
                    , "root", "k3159").getConnection();
            PreparedStatement stmt = connection.prepareStatement("insert into student values (?,?,?,?)");
            int regno = Integer.parseInt(req.getParameter("regno"));
            String name = req.getParameter("name");
            String major = req.getParameter("major");
            int bdate = Integer.parseInt(req.getParameter("bdate"));

            stmt.setInt(1, regno);
            stmt.setString(2, name);
            stmt.setString(3, major);
            stmt.setInt(4,bdate);

            int a=stmt.executeUpdate();
            resp.getWriter().println("Student Inserted Successfully");
            stmt.close();
            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
