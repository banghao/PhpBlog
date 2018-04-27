package com.xc.dao;

import com.xc.connection.Database;
import com.xc.model.UserModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2018/1/7.
 */
public class UserDao {
    private Connection connection;
    public String userLogin(UserModel model){
        connection =Database.getConnection();
        String sql = "select * from coa where coa_ID = ? and coa_password =?";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, model.getCoa_ID());
            ps.setString(2, model.getCoa_password());
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                return rs.getString("userlevel");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.releaseConnection(connection);
        }
        return "-1";
    }
}
