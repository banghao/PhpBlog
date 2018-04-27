package com.xc.dao;

import com.xc.connection.Database;
import com.xc.model.StuCoa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StucoaDao {
    private Connection connection;
    public List<StuCoa> list(){
        List<StuCoa> stucoalist = new ArrayList<StuCoa>();
        connection = Database.getConnection();
        String sql = "select * from stucoa,coa,stu_static where stucoa.coa_ID=coa.coa_ID and stucoa.stu_ID=stu_static.stu_ID ORDER BY stucoa_type,stu_name";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            StuCoa stucoa;
            while(rs.next()){
                stucoa =new StuCoa();
                stucoa.setCoaname(rs.getString("coa_name"));
                stucoa.setStuaddr(rs.getString("stu_addr"));
                stucoa.setStuname(rs.getString("stu_name"));
                stucoa.setStuphone(rs.getString("stu_phone"));
                stucoa.setType(rs.getString("stucoa_type"));
                stucoalist.add(stucoa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.releaseConnection(connection);
        }
        return stucoalist;
    }
}
