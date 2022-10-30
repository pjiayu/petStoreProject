package com.chilun.petStore.service;

import com.chilun.petStore.dao.ConnUtil;
import com.chilun.petStore.dao.specialDAO.UserDAO;
import com.chilun.petStore.pojo.User;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author 皮皮皮
 * @date 2022/10/30 12:28
 */
public class UerService {

    private UserDAO userDAO;
    Connection connection;

    public boolean login(String account, String password) {


        try{
            //获取数据库连接
            connection= ConnUtil.getConn();
            //查询账号和密码
            User user= userDAO.getUserByAcc(account);
            if(user!=null){
                if(user.getPassword()==password){
                    return true;
                }else{
                    //业务：提示密码错误   待完善


                    return false;
                }
            }else{
                //业务：提示账户名错误     待完善


                return false;
            }

        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        finally {
            try {
                ConnUtil.closeConn();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

    }
}
