package org.example.messages.users;

import java.sql.SQLException;
import java.util.List;

public interface Dao<T> {
    T get(String id) throws SQLException;
    List<T> getAll() throws SQLException;
    void save(T t) throws SQLException;
    void delete(String id) throws SQLException;
}
