package service;

import dao.ManageDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ManagerService {
    ManageDao manageDao = new ManageDao();
    public List<Map<String,Object>> SelectAllManager(){
        List<Map<String,Object>> list = new ArrayList<>();

        try {
            list = manageDao.selectAllManager();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  list;
    }

    public void deleteManager(String t) {
        try {
            manageDao.deleteManager(Integer.parseInt(t));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
