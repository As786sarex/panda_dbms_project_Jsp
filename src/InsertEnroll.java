import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/InsertEnroll")
@SuppressWarnings("Duplicates")
public class InsertEnroll extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = new DbConnection("jdbc:mariadb://localhost:3306/student_database"
                    , "root", "k3159").getConnection();
            PreparedStatement stmt = connection.prepareStatement("insert into enroll values (?,?,?,?)");
            int regno = Integer.parseInt(req.getParameter("regno"));
            int course = Integer.parseInt(req.getParameter("course"));
            int sem = Integer.parseInt(req.getParameter("sem"));
            int marks = Integer.parseInt(req.getParameter("marks"));

            stmt.setInt(1, regno);
            stmt.setInt(2, course);
            stmt.setInt(3, sem);
            stmt.setInt(4,marks);

            int a=stmt.executeUpdate();
            PrintWriter writer= resp.getWriter();
            if (a>0) {
                writer.println("Student Inserted Successfully and "+a+" rows affected");
            }
            else {
                writer.println("Insertion failed");
            }

            stmt.close();
            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
