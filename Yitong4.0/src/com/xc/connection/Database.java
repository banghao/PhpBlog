package com.xc.connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.PropertyResourceBundle;

public class Database {

    private static String url;
    private static String driver;
    private static String username;
    private static String password;
    private static String type;
    private static String datasource;
    private final static String fileName = "database";
    private static ThreadLocal<Connection> connections = new ThreadLocal<Connection>();

    static {
        config();
    }

    private static void config() {
        // 读取系统配置
        PropertyResourceBundle resourceBundle = (PropertyResourceBundle) PropertyResourceBundle.getBundle(fileName);
        // 将系统设置赋值给类变量
        Enumeration<String> enu = resourceBundle.getKeys();
        while (enu.hasMoreElements()) {

            String propertyName = enu.nextElement();
            switch (propertyName) {
                case "database.url":
                    url = resourceBundle.getString("database.url");
                    break;
                case "database.driver":
                    driver = resourceBundle.getString("database.driver");
                    break;
                case "database.username":
                    username = resourceBundle.getString("database.username");
                    break;
                case "database.password":
                    password = resourceBundle.getString("database.password");
                    break;
                case "database.type":
                    type = resourceBundle.getString("database.type");
                    break;
                case "database.datasource":
                    datasource = resourceBundle.getString("database.datasource");
                    System.out.println(datasource);
                    break;
                default:
                    break;
            }
        }
    }

    /**
     * 取得数据库连接
     *
     * @return
     * @throws SQLException
     */
    public synchronized static Connection getConnection() {
        Connection con = connections.get();
        try {
            if (con != null && !con.isClosed()) {
                return con;
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        if ("pooled".equalsIgnoreCase(type)) {// 从JNDI中取得数据源

            try {

                Context ctx = new InitialContext(); // 从命名系统中获取 DataSource工厂对象
                DataSource dataSource = (DataSource) ctx.lookup(datasource);
                con = dataSource.getConnection();
                //con.setAutoCommit(false);
                connections.set(con);
                System.out.println("get connection from pool");
                return con;
            } catch (NamingException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            /*
             *直接使用JDBC驱动连接
             */
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(url, username, password);
                connections.set(con);
                return con;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }


    public synchronized static void releaseConnection(Connection connection) {

        try {
            if (connection != null && !connection.isClosed())
                connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection = null;
            }
        }

    }

}