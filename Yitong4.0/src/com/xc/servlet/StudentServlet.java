package com.xc.servlet;

import com.xc.dao.StudentDao;
import com.xc.model.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class StudentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int method = Integer.parseInt(req.getParameter("method"));
        switch (method) {
            case 0:
                this.listStudent(req, resp);
                break;
            case 1:
                this.aboutStudent(req, resp);
                break;
            case 2:
                this.modStudent(req, resp);
                break;
            case 3:
                this.deleteStudent(req, resp);
                break;
            case 4:
                this.updatestudent(req, resp);
                break;
            default:
        }
    }

    private void updatestudent(HttpServletRequest req, HttpServletResponse resp) {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("utf8");
        try {
            String id = new String(req.getParameter("id").getBytes("ISO-8859-1"),"UTF-8");
            //String id = req.getParameter("id");
            String name = new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
            String sex = new String(req.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
            String s = new String(req.getParameter("type").getBytes("ISO-8859-1"),"UTF-8");
            String year = new String(req.getParameter("year").getBytes("ISO-8859-1"),"UTF-8");
            String mouth = new String(req.getParameter("mouth").getBytes("ISO-8859-1"),"UTF-8");
            String day = new String(req.getParameter("day").getBytes("ISO-8859-1"),"UTF-8");
            String phone = new String(req.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
            String addr = new String(req.getParameter("addr").getBytes("ISO-8859-1"),"UTF-8");
            PrintWriter out = null;
            try {
                out = resp.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(name.equals("")||sex.equals("")||s.equals("")||year.equals("")||mouth.equals("")||day.equals("")||phone.equals("")||addr.equals("")) out.print("<script language=javascript>alert('请把表单填写完整！');window.location.href='Student.do?method=1&id="+id+"';</script>");
            else{
                String birthday=year+"-"+mouth+"-"+day;
                String type="";
                if(s.equals("科目一")) type="1";
                else if(s.equals("科目二")) type="2";
                else if(s.equals("科目三")) type="3";
                else if(s.equals("科目四")) type="4";
                Student student = new Student();
                student.setStuID(id);
                student.setStuname(name);
                student.setStusex(sex);
                student.setStustate(type);
                student.setStuphone(phone);
                student.setStuaddr(addr);
                student.setStubrithday(birthday);
                StudentDao studentDao = new StudentDao();
                Boolean b=studentDao.updatestudent(student);
                if(b) out.print("<script language=javascript>alert('修改成功！');window.location.href='Student.do?method=1&id="+id+"';</script>");
                else out.print("<script language=javascript>alert('修改失败！');window.location.href='Student.do?method=1&id="+id+"';</script>");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    private void deleteStudent(HttpServletRequest req, HttpServletResponse resp) {
        resp.setContentType("text/html;charset=UTF-8");
        String id = req.getParameter("id");
        Student student=new Student();
        student.setStuID(id);
        StudentDao studentDao = new StudentDao();
        Boolean b =studentDao.deletestudent(student);
        PrintWriter out= null;
        try {
            out = resp.getWriter();
            if(b) out.print("<script language=javascript>alert('删除成功！');window.location.href='Student.do?method=0';</script>");
            else out.print("<script language=javascript>alert('删除失败！');window.location.href='Student.do?method=0';</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void modStudent(HttpServletRequest req, HttpServletResponse resp) {
        String id = req.getParameter("id");
        req.setAttribute("id",id);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/Student_change.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void aboutStudent(HttpServletRequest req, HttpServletResponse resp) {
        String id = req.getParameter("id");
        req.setAttribute("id",id);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/student_about.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listStudent(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/Student_information.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
