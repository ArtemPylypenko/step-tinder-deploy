package org.example.filters;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.likes.LikesController;
import org.example.likes.LikesDao;
import org.example.users.UsersController;
import org.example.users.UsersDao;


import java.io.IOException;
import java.sql.Connection;

public class ShowUsersFilter implements HttpFilter {
    private Connection conn;
    private UsersController usersController;
    private LikesController likesController;

    ShowUsersFilter(Connection conn) {
        this.conn = conn;
        usersController = new UsersController(new UsersDao(conn));
        likesController = new LikesController(new LikesDao(conn));
    }

    @Override
    public void doHttpFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
    }
}
