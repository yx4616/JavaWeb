package dao;

import model.Project;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class ProjectDao {

    //查看工程
    public List<Map<String, Object>> SelectAll() throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from t_project";
        return r.query(sql,new MapListHandler());
    }
    //添加工程
    public void addProject(Project project) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into t_project(project_id, project_name, deputy_name, telephone, address) value (?,?,?,?,?)";
        r.update(sql,project.getProject_id(),project.getProject_name(),project.getDeputy_name(),project.getTelephone(),project.getAddress());
    }
}
