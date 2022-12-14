package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Objects;

public class BootStrapServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = Objects.requireNonNull(getClass().getClassLoader().getResource("templates/css/bootstrap.min.css"))
                .getFile();
        try (PrintWriter pw = resp.getWriter()) {
            Files.readAllLines(Path.of(fileName)).forEach(pw::println);
        }
    }
}
