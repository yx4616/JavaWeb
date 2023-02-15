package service;

import dao.ProjectDao;
import model.Enterprise;
import model.Project;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProjectService {
    ProjectDao projectDao = new ProjectDao();
    ////查询所有
    public List<Map<String, Object>> SelectAll() {
        List<Map<String, Object>> list =new ArrayList<>();
        try {
            list = projectDao.SelectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  list;
    }
    //添加
    public void addProject(Project product) {
        try {
            projectDao.addProject(product);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
