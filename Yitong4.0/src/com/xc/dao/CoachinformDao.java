package com.xc.dao;
import com.xc.connection.Database;
import com.xc.model.Coachinform;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Administrator on 2018/1/7.
 */
public class CoachinformDao {
    private Connection connection;
    private PreparedStatement ps;

    public boolean  updateCoach(Coachinform coachinform) {
        connection = Database.getConnection();
        System.out.printf(coachinform.getCoachname() +coachinform.getSex()+coachinform.getPassword()+coachinform.getIdcard()+coachinform.getPhone()+coachinform.getAddress());
        String sqlString = "update coa set coa_name=?,coa_sex=?,coa_password=?,coa_idcard=?,coa_phone=?,coa_addr=? where id=?";


        try {
            ps = connection.prepareStatement(sqlString);

            ps.setString(1, coachinform.getCoachname());
            ps.setString(2, coachinform.getSex());
            ps.setString(3, coachinform.getPassword());
            ps.setString(4, coachinform.getIdcard());
            ps.setString(5, coachinform.getPhone());
            ps.setString(6, coachinform.getAddress());
            ps.setInt(7, coachinform.getId());
           int rows=ps.executeUpdate();
            if(rows==1) return true;


        } catch (SQLException e) {
            e.printStackTrace();

        } finally {

            Database.releaseConnection(connection);
        }
        return false;
    }
    
    public boolean deleteCoach(Coachinform coachinform) {
        connection = Database.getConnection();
        String sqlString = "delete from coa where id=?";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sqlString);
            ps.setInt(1, coachinform.getId());
            int a = ps.executeUpdate();
            if(a==1) return true;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            Database.releaseConnection(connection);
        }
        return false;
    }




}
