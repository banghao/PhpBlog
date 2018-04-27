package com.xc.dao;

import com.xc.connection.Database;
import com.xc.model.Student;
import com.xc.model.Test_arrange;

import java.net.PortUnreachableException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
        private Connection connection;
        public List<Student> list(){
            List<Student> stulist = new ArrayList<Student>();
            connection = Database.getConnection();
            String sql = "SELECT * FROM stu_static,stu_trend where stu_static.stu_ID=stu_trend.stu_ID";
            PreparedStatement ps;
            try {
                ps = connection.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                Student student;
                while(rs.next()){
                    student =new Student();
                    student.setStuID(rs.getString("stu_ID"));
                    student.setStuname(rs.getString("stu_name"));
                    student.setStustate(rs.getString("stu_state"));
                    stulist.add(student);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Database.releaseConnection(connection);
            }
            return stulist;
        }
        public void  aboutstudent(Student student){
            connection = Database.getConnection();
            String sql = "SELECT * FROM stu_static,stu_trend where stu_static.stu_ID=stu_trend.stu_ID and stu_static.stu_ID=?";
            PreparedStatement ps;
            try {
                ps = connection.prepareStatement(sql);
                ps.setString(1,student.getStuID());
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
                    student.setStuname(rs.getString("stu_name"));
                    student.setStusex(rs.getString("stu_sex"));
                    student.setStustate(rs.getString("stu_state"));
                    student.setStubrithday(rs.getString("stu_birthday"));
                    student.setStuphone(rs.getString("stu_phone"));
                    student.setStuaddr(rs.getString("stu_addr"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Database.releaseConnection(connection);
            }
        }
        public boolean deletestudent(Student student){
            connection = Database.getConnection();
            String sql1 = "DELETE from stu_static WHERE stu_ID="+student.getStuID();
            String sql2 = "DELETE from stu_trend WHERE stu_ID="+student.getStuID();
            PreparedStatement ps;
            try {
                ps = connection.prepareStatement(sql2);
                int a = ps.executeUpdate();
                ps = connection.prepareStatement(sql1);
                int b = ps.executeUpdate();
                if(a==1&&b==1) return true;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Database.releaseConnection(connection);
            }
            return false;
        }
        public boolean updatestudent(Student student){
            connection = Database.getConnection();
            System.out.printf(student.getStuname()+student.getStusex()+student.getStuphone()+student.getStuaddr()+student.getStuID());
            String sql1 = "UPDATE stu_static SET stu_name=?,stu_sex=?,stu_phone=?,stu_addr=? WHERE stu_ID=?";
            String sql2="UPDATE stu_trend SET stu_state=? WHERE stu_ID=?";
            PreparedStatement ps;
            try {
                ps = connection.prepareStatement(sql1);
                ps.setString(1,student.getStuname());
                ps.setString(2,student.getStusex());
                ps.setString(3,student.getStuphone());
                ps.setString(4,student.getStuaddr());
                ps.setString(5,student.getStuID());
                int a = ps.executeUpdate();
                ps = connection.prepareStatement(sql2);
                ps.setString(1,student.getStustate());
                ps.setString(2,student.getStuID());
                int b = ps.executeUpdate();
                if(a==1&&b==1) return true;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Database.releaseConnection(connection);
            }
            return false;
        }
}
