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

@WebServlet("/InsertText")
@SuppressWarnings("Duplicates")
public class InsertText extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = new DbConnection("jdbc:mariadb://localhost:3306/student_database"
                    , "root", "k3159").getConnection();
            PreparedStatement stmt = connection.prepareStatement("insert into text values (?,?,?,?)");
            int book_isbn= Integer.parseInt(req.getParameter("book_isbn"));
            String title = req.getParameter("title");
            String publisher = req.getParameter("publisher");
            String author = req.getParameter("author");


            stmt.setInt(1, book_isbn);
            stmt.setString(2, title);
            stmt.setString(3, publisher);
            stmt.setString(4,author);

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
