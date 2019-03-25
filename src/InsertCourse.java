import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/InsertCourse")
public class InsertCourse extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = new DbConnection("jdbc:mariadb://localhost:3306/student_database"
                    , "root", "k3159").getConnection();
            PreparedStatement stmt = connection.prepareStatement("insert into course values (?,?,?)");
            int course = Integer.parseInt(req.getParameter("course"));
            String cname = req.getParameter("cname");
            String dept = req.getParameter("dept");

            stmt.setInt(1, course);
            stmt.setString(2, cname);
            stmt.setString(3, dept);

            int a=stmt.executeUpdate();
            stmt.close();
            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
