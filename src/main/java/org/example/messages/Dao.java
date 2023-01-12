package org.example.messages;

import java.sql.SQLException;
import java.util.List;

public interface Dao<T> {
    List<T> getAllBetween(String idSend, String idRec) throws SQLException;
    void save(T t) throws SQLException;

}
