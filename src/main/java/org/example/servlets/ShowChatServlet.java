package org.example.servlets;

import freemarker.template.Configuration;
import freemarker.template.TemplateException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.GlobalSQLConnection;
import org.example.messages.MessagesController;
import org.example.messages.MessagesDao;
import org.example.users.UsersController;
import org.example.users.UsersDao;
import java.sql.Connection;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Optional;

public class ShowChatServlet extends HttpServlet {
    private final String osPrefix;
    private Connection conn;
    private MessagesController messagesController;
    private UsersController usersController;
    private String idRec;

    public ShowChatServlet(String osPrefix) throws SQLException {
        this.osPrefix = osPrefix;
        this.conn = GlobalSQLConnection.get();
        messagesController = new MessagesController(new MessagesDao(conn));
        usersController = new UsersController(new UsersDao(conn));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie c = Optional.ofNullable(req.getCookies())
                .flatMap(cc -> Arrays.stream(cc).filter(c1-> c1.getName().equals("id")).findFirst()).get();

        String pathInfo = req.getPathInfo();
        if(idRec == null)
            idRec = req.getParameter("id");

        Configuration conf = new Configuration(Configuration.VERSION_2_3_31);
        conf.setDefaultEncoding(String.valueOf(StandardCharsets.UTF_8));
        conf.setDirectoryForTemplateLoading(new File(osPrefix));

        HashMap<String, Object> data = new HashMap<>();

        try {
            data.put("messages", messagesController.getAllBetween(c.getValue(), idRec));
            data.put("userTo", usersController.getUser(idRec));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        if (pathInfo.startsWith("/")) pathInfo = pathInfo.substring(1);
        Path file = Path.of(osPrefix, pathInfo);

        try (PrintWriter w = resp.getWriter()) {
            conf.getTemplate(pathInfo).process(data, w);
        } catch (TemplateException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        idRec = String.valueOf(req.getParameter("id"));
        resp.sendRedirect("/messages/chat.ftl");

    }
}
