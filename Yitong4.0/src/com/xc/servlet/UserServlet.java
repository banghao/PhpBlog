package com.xc.servlet;

import com.xc.dao.UserDao;
import com.xc.model.UserModel;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2018/1/7.
 */
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        UserModel user=new UserModel();
        user.setCoa_ID(req.getParameter("username"));
        user.setCoa_password(req.getParameter("password"));
        user.setUserLevel(req.getParameter("userlevel"));
        UserDao userDao=new UserDao();
        String level = userDao.userLogin(user);
        HttpSession session=req.getSession();
        PrintWriter out=resp.getWriter();
        if(level.equals("1")  ){
            session.setAttribute("userLevel",level);
            out.print("<script language=javascript>alert('登录成功！');window.location.href='xitongindex.do';</script>");
        }else{
            out.print("<script language=javascript>alert('登录失败！');history.go(-1);</script>");
        }
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        doPost(req,resp);
    }
}
