package com.xc.servlet;

import com.xc.model.Coach;
import com.xc.model.Coachinform;
import com.xc.dao.CoachinformDao;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class StucoaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Coach coach = new Coach();
        Coachinform coachinform = new Coachinform();
        int method = Integer.parseInt(req.getParameter("method"));
        switch (method) {
            case 0:
                this.listStuCoa(req, resp);
                break;
            case 1:
                this.listCoach(req, resp);
                break;
            case 2:
                this.aboutCoach(req, resp);
                break;
            case 3:
                this.updateCoach(req, resp);
                break;
            case 4:
                this.deleteCoach(req, resp);
                break;
            case 5:
                this.modCoach(req, resp);
                break;
            default:
        }


    }
    private void listStuCoa(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/Training_arrangements.jsp");
          requestDispatcher.forward(req, resp);
    }

    private void listCoach(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/Coaching_information.jsp");

        requestDispatcher.forward(req, resp);
    }
    private void aboutCoach(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("id");
        req.setAttribute("id",id);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/coaching_about.jsp");

        requestDispatcher.forward(req, resp);
    }

    private void updateCoach( HttpServletRequest req, HttpServletResponse resp)
            {
        String id = req.getParameter("id");
        req.setAttribute("id",id);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/jsp/Coaching_change.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCoach(HttpServletRequest req, HttpServletResponse resp)
          {
        resp.setContentType("text/html;charset=UTF-8");
        String id = req.getParameter("id");
        Coachinform coachinform=new Coachinform();
        coachinform.setId(Integer.valueOf(id));
        CoachinformDao coachinformDao = new CoachinformDao();
        Boolean b =coachinformDao.deleteCoach(coachinform);
        PrintWriter out= null;
        try {
            out = resp.getWriter();
            if(b) out.print("<script language=javascript>alert('删除成功！');window.location.href='Stucoa.do?method=1';</script>");
            else out.print("<script language=javascript>alert('删除失败！');window.location.href='Stucoa.do?method=1';</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void modCoach(HttpServletRequest req, HttpServletResponse resp) {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("utf8");
        try {
            String id = new String(req.getParameter("id").getBytes("ISO-8859-1"),"UTF-8");

            String coachname = new String(req.getParameter("coachname").getBytes("ISO-8859-1"),"UTF-8");
            String sex = new String(req.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
            String password = new String(req.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
            String idcard = new String(req.getParameter("idcard").getBytes("ISO-8859-1"),"UTF-8");
            String phone = new String(req.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
            String address = new String(req.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
            PrintWriter out = null;
            try {
                out = resp.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(coachname.equals("")||sex.equals("")||password.equals("")||idcard.equals("")||phone.equals("")||address.equals("")) out.print("<script language=javascript>alert('请填写完整！');window.location.href='Stucoa.do?method=2&id="+id+"';</script>");
            else{


                Coachinform coachinform = new Coachinform();
                coachinform.setId(Integer.valueOf(id));
                coachinform.setCoachname(coachname);
                coachinform.setSex(sex);
                coachinform.setPassword(password);
                coachinform.setIdcard(idcard);
                coachinform.setPhone(phone);
                coachinform.setAddress(address);
                CoachinformDao coachinformDao = new CoachinformDao();
                Boolean b=coachinformDao.updateCoach(coachinform);
                if(b) out.print("<script language=javascript>alert('修改成功！');window.location.href='Stucoa.do?method=2&id="+id+"';</script>");
                else out.print("<script language=javascript>alert('修改失败！');window.location.href='Stucoa.do?method=2&id="+id+"';</script>");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
