package com.xc.dao;
import com.xc.connection.Database;
import com.xc.model.Coach;
import com.xc.model.Coachinform;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/1/7.
 */
public class CoachDao {
    private Connection connection;
    public List<Coach> list(){
        List<Coach> coalist = new ArrayList<Coach>();
        connection = Database.getConnection();
        String sql = "select DISTINCT coa_name,coa.coa_ID,stucoa_type,id from stucoa,coa where stucoa.coa_ID=coa.coa_ID  ORDER BY id";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Coach coa;
            while(rs.next()){
                coa =new Coach();
                coa.setId(rs.getInt("id"));
                coa.setCoach(rs.getString("coa_ID"));
                coa.setCoachname(rs.getString("coa_name"));
                coa.setType(rs.getString("stucoa_type"));
                coalist.add(coa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.releaseConnection(connection);
        }
        return coalist;
    }
    public void about(Coachinform coachinform){
        connection = Database.getConnection();
        String sql = "select * from coa where id="+String.valueOf(coachinform.getId())+" ORDER BY id;";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                coachinform.setCoaid(rs.getString("coa_ID"));
                coachinform.setCoachname(rs.getString("coa_name"));
                coachinform.setSex(rs.getString("coa_sex"));
                coachinform.setPassword(rs.getString("coa_password"));
                coachinform.setIdcard(rs.getString("coa_idcard"));
                coachinform.setPhone(rs.getString("coa_phone"));
                coachinform.setAddress(rs.getString("coa_addr"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.releaseConnection(connection);
        }
    }
}
