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

@WebServlet("/InsertBookAdapt")
@SuppressWarnings("Duplicates")
public class InsertBookAdapt extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = new DbConnection("jdbc:mariadb://localhost:3306/student_database"
                    , "root", "k3159").getConnection();
            PreparedStatement stmt = connection.prepareStatement("insert into book_adaptation values (?,?,?)");
            int course = Integer.parseInt(req.getParameter("A_course"));
            int semester = Integer.parseInt(req.getParameter("semester"));
            int book_isbn = Integer.parseInt(req.getParameter("book_isbn"));

            stmt.setInt(1, course);
            stmt.setInt(2, semester);
            stmt.setInt(3, book_isbn);

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
