package dao;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public User login(String username,
                      String password) {

        String sql =
            "SELECT * FROM tbl_User " +
            "WHERE Username=? AND Password=?";

        try {

            Connection conn =
                new DBContext().getConnection();

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs =
                ps.executeQuery();

            if(rs.next()){

                User u = new User();

                u.setUserID(
                    rs.getInt("UserID"));

                u.setUsername(
                    rs.getString("Username"));

                u.setFullName(
                    rs.getString("FullName"));

                u.setRole(
                    rs.getString("Role"));

                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}