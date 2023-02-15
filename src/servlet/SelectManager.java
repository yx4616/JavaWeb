package servlet;

import service.ManagerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/SelectManager")
public class SelectManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Map<String,Object>> list = new ManagerService().SelectAllManager();
        req.setAttribute("list",list);
        req.getRequestDispatcher("manageLeaveword.jsp").forward(req,resp);
    }
}
