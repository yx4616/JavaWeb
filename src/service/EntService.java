package service;

import dao.EntDao;
import model.Enterprise;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class EntService {
EntDao entDao = new EntDao();
////查询所有
    public List<Map<String, Object>> SelectAll() {
        List<Map<String, Object>> list =new ArrayList<>();
        try {
            list = entDao.SelectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  list;
    }
//添加
    public void addEnt(Enterprise product) {
        try {
            entDao. addEnt(product);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
