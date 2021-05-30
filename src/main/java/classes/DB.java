package classes;

import java.lang.reflect.InvocationTargetException;
import java.sql.*;

public class DB {
    public static String MS_DB_URL = "jdbc:sqlserver://localhost;database=javaLab_12";
    public static String MS_JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static String MS_PASSWORD = "ewqqwe";
    public static String MS_USER_NAME = "Anton";

    public static ResultSet getTable(String tableName) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, SQLException {
        Connection conn = null;

        Class.forName(DB.MS_JDBC_DRIVER).getDeclaredConstructor().newInstance();
        conn = DriverManager.getConnection(DB.MS_DB_URL, DB.MS_USER_NAME, DB.MS_PASSWORD);
        Statement st = conn.createStatement();

        ResultSet rs = st.executeQuery("select * from " + tableName);
        return rs;
    }
}
