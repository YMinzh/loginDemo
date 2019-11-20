package com.login.server;

import com.login.entity.User;
import com.login.util.JdbcInit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Check {

    public User checkPassword(String username,String password) throws SQLException {
        Connection conn = JdbcInit.getInstance().getConn();
        String sql = "select *from users where username = ?";
        System.out.println(conn);

        PreparedStatement pre = conn.prepareStatement(sql);
        pre.setString(1,username);
        ResultSet set = pre.executeQuery();
        if (set.next()){
            if(username.equals(set.getString("password"))){
                User user = new User(set.getLong("id"),set.getString("username"),set.getString("password"));
                System.out.println(user.toString());
                return user;
            }
        }
        return null;
    }
}
