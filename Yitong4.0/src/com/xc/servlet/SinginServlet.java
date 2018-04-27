package com.xc.servlet;

import com.xc.dao.coadao_key;
import com.xc.model.Coachinform;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SinginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int method=Integer.valueOf(req.getParameter("method"));
        if(method==0){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/sign.jsp");
            requestDispatcher.forward(req, resp);
        }else{
            resp.setContentType("text/html;charset=UTF-8");
            Coachinform coach = new Coachinform();
            coach.setCoachname(new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setPhone(new String(req.getParameter("coa_phonr").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setSex(new String(req.getParameter("coa_sex").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setCoa_scage(new String(req.getParameter("coa_scage").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setIdcard(new String(req.getParameter("coa_idcard").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setAddress(new String(req.getParameter("coa_addr").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setPassword(new String(req.getParameter("coa_password").getBytes("ISO-8859-1"),"UTF-8"));
            coach.setCoaid(new String(req.getParameter("Coach_number").getBytes("ISO-8859-1"),"UTF-8"));
            coadao_key coadao_key=new coadao_key();
            PrintWriter out=resp.getWriter();
            if(coadao_key.coainsert(coach)){
                out.print("<script language=javascript>alert('注册成功！');window.location.href='index.jsp';</script>");
            }else {
                out.print("<script language=javascript>alert('注册失败！');window.location.href='index.jsp';</script>");
            }
        }
    }
}
