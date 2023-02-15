package servlet;

import service.ProjectService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/selectProject")
public class SelectProject extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Map<String,Object>> list = new ProjectService().SelectAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("project_list.jsp").forward(req,resp);
    }
}
