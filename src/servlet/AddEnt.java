package servlet;

import model.Enterprise;
import service.EntService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addEnt")
public class AddEnt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Enterprise enterprise = new Enterprise();

        enterprise.setEnt_id(req.getParameter("textfield"));
        enterprise.setEnt_name(req.getParameter("textfield2"));
        enterprise.setBegin_date(req.getParameter("textfield4"));
        enterprise.setAddress(req.getParameter("textfield6"));
        enterprise.setReg_capital(Double.parseDouble(req.getParameter("textfield7")));
        new EntService().addEnt(enterprise);
        req.getRequestDispatcher("index.jsp").forward(req, resp);

    }
}
