package util;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL =
            "jdbc:mysql://aws.connect.psdb.cloud/conexion?sslMode=VERIFY_IDENTITY";
    private static final String USER = "pscale_pw_G50jBkgeAJ9nEYwHMdhC2hB4CPKsJYjnuD1qY2iEKgT";
    private static final String PASS = "SONGOKU_password";
    private static BasicDataSource pool;
    public static BasicDataSource getInstance() throws SQLException {
        if (pool == null) {
            pool = new BasicDataSource();
            pool.setUrl(URL);
            pool.setUsername(USER);
            pool.setPassword(PASS);

            pool.setInitialSize(3);
            pool.setMinIdle(3);
            pool.setMaxIdle(8);
            pool.setMaxTotal(8);
        }

        return pool;
    }
    public static Connection getConnection() throws SQLException{
        return getInstance().getConnection();
    }
}