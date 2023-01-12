package org.example.messages.users;

import org.example.users.User;
import org.example.users.UsersDao;

import java.sql.SQLException;
import java.util.List;

public class UsersController {
    private UsersDao dao;

    public UsersController(UsersDao dao) {
        this.dao = dao;
    }

    public org.example.users.User getUser(String id) throws SQLException {
        return dao.get(id);
    }

    public List<org.example.users.User> getAllUsers() throws SQLException {
        return dao.getAll();
    }

    public void addUser(org.example.users.User u) throws SQLException {
        dao.save(u);
    }

    public void deleteUser(String id) throws SQLException {
        dao.delete(id);
    }
    public boolean checkUserLogin(String login) throws SQLException {
        return dao.checkUserLogin(login);
    }
    public User getUserByLogin(String login) throws SQLException {
        return dao.getUserByLogin(login);
    }

}
