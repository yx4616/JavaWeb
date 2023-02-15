package servlet;

import model.Project;
import service.ProjectService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddProject")
public class AddProject extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Project project = new Project();
        project.setProject_id(req.getParameter("textfield"));
        project.setProject_name((req.getParameter("textfield2")));
        project.setDeputy_name(req.getParameter("textfield9"));
        project.setTelephone(req.getParameter("textfield6"));
        project.setAddress(req.getParameter("textfield7"));
        new ProjectService().addProject(project);


    }
}
