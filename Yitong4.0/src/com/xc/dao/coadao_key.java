package com.xc.dao;

import com.xc.connection.Database;
import com.xc.model.Coachinform;

import java.sql.*;

/**
 * Created by Administrator on 2018/1/7.
 */
public class coadao_key {
    private Connection connection;
    private PreparedStatement ps;
    public boolean coainsert(Coachinform model) {
        connection = Database.getConnection();
        String sql = "insert into coa(id,coa_ID,coa_name,coa_sex,coa_scage,coa_password,coa_phone,coa_idcard,coa_addr)values(NULL,?,?,?,?,?,?,?,?)";
      try {
          ps = connection.prepareStatement(sql);
          ps.setString(1, model.getCoaid());
          ps.setString(2, model.getCoachname());
          ps.setString(3, model.getSex());
          ps.setString(4, model.getCoa_scage());
          ps.setString(5, model.getPassword());
          ps.setString(6, model.getPhone());
          ps.setString(7, model.getIdcard());
          ps.setString(8, model.getAddress());
          int a = ps.executeUpdate();
          if(a==1) return true;
      }catch (SQLException e){
          e.printStackTrace();
      }finally {
          Database.releaseConnection(connection);
      }
        return false;
    }
}
