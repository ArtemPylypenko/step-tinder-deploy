package org.example;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class GlobalSQLConnection {

    private static Connection conn = null;

    public static Connection get() throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(
                    "jdbc:postgresql://postgresql-104982-0.cloudclusters.net:19605/tinder-db",
                    "ortem",
                    "20032612"
            );
        }
        return conn;
    }
    public static void close() throws SQLException {
        conn.close();
    }

}
