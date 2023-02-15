package dao;

import model.Enterprise;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DataSourceUtils;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class EntDao {

//查看企业
    public List<Map<String, Object>> SelectAll() throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from t_enterprise_info";
        return r.query(sql,new MapListHandler());
    }
//添加企业
    public void addEnt(Enterprise ent) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into t_enterprise_info(ent_id, ent_name, begin_date, addr, reg_capital) value (?,?,?,?,?)";
        r.update(sql,ent.getEnt_id(),ent.getEnt_name(),ent.getBegin_date(),ent.getAddress(),ent.getReg_capital());
    }
}
