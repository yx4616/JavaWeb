package dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DataSourceUtils;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class ManageDao {
    public List<Map<String,Object>> selectAllManager () throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "SELECT * from shopdb.t_message";
        return  r.query(sql,new MapListHandler());
    }

    public void deleteManager(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql ="delete  from shopdb.t_message where id=?";
        r.update(sql,id);
    }
}
