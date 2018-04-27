package com.xc.dao;

import com.xc.connection.Database;
import com.xc.model.Test_arrange;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Test_arrangeDao {
    private Connection connection;
    public List<Test_arrange> list(){
        List<Test_arrange> testlist = new ArrayList<Test_arrange>();
        connection = Database.getConnection();
        String sql = "select * from test,test_arrange,stu_static,coa where test_arrange.coa_ID=coa.coa_ID and test_arrange.stu_ID=stu_static.stu_ID and test_arrange.test_ID=test.test_ID";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Test_arrange test_arrange;
            while(rs.next()){
                test_arrange =new Test_arrange();
                test_arrange.setCoaname(rs.getString("coa_name"));
                test_arrange.setStuname(rs.getString("stu_name"));
                test_arrange.setTestname(rs.getString("test_name"));
                test_arrange.setTestfield(rs.getString("test_field"));
                test_arrange.setTesttime(rs.getString("test_time"));
                testlist.add(test_arrange);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Database.releaseConnection(connection);
        }
        return testlist;
    }
}
