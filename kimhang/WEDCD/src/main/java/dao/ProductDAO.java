package dao;

import context.DBContext;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // ==========================
    // HIỂN THỊ TẤT CẢ SẢN PHẨM
    // ==========================

    public List<Product> getAllProducts() {

        List<Product> list = new ArrayList<>();

        String sql =
                "SELECT ProductID, ProductName, "
                + "SupplierID, CategoryID, "
                + "QuantityPerUnit, UnitPrice, "
                + "UnitsInStock, ImageURL "
                + "FROM SanPham";

        try {

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product();

                p.setProductID(rs.getInt("ProductID"));
                p.setProductName(rs.getString("ProductName"));
                p.setSupplierID(rs.getInt("SupplierID"));
                p.setCategoryID(rs.getInt("CategoryID"));
                p.setQuantityPerUnit(rs.getString("QuantityPerUnit"));
                p.setUnitPrice(rs.getDouble("UnitPrice"));
                p.setUnitsInStock(rs.getInt("UnitsInStock"));
                p.setImageURL(rs.getString("ImageURL"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ==========================
    // TÌM KIẾM SẢN PHẨM
    // ==========================

    public List<Product> searchProduct(String keyword) {

        List<Product> list = new ArrayList<>();

        String sql =
                "SELECT * FROM SanPham "
                + "WHERE ProductName LIKE ?";

        try {

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, "%" + keyword + "%");

            rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product();

                p.setProductID(rs.getInt("ProductID"));
                p.setProductName(rs.getString("ProductName"));
                p.setSupplierID(rs.getInt("SupplierID"));
                p.setCategoryID(rs.getInt("CategoryID"));
                p.setQuantityPerUnit(rs.getString("QuantityPerUnit"));
                p.setUnitPrice(rs.getDouble("UnitPrice"));
                p.setUnitsInStock(rs.getInt("UnitsInStock"));
                p.setImageURL(rs.getString("ImageURL"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ==========================
    // THÊM SẢN PHẨM
    // ==========================

    public void insertProduct(String name,
                              double price,
                              int stock,
                              String imageURL) {

        String sql =
                "INSERT INTO SanPham "
                + "(ProductName, SupplierID, "
                + "CategoryID, QuantityPerUnit, "
                + "UnitPrice, UnitsInStock, ImageURL) "
                + "VALUES (?,1,1,N'1 cái',?,?,?)";

        try {

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setInt(3, stock);
            ps.setString(4, imageURL);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ==========================
    // XÓA SẢN PHẨM
    // ==========================

    public void deleteProduct(int id) {

        String sql =
                "DELETE FROM SanPham "
                + "WHERE ProductID = ?";

        try {

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ==========================
    // SỬA SẢN PHẨM
    // ==========================

    public void updateProduct(int id,
                              String name,
                              double price,
                              int stock) {

        String sql =
                "UPDATE SanPham "
                + "SET ProductName = ?, "
                + "UnitPrice = ?, "
                + "UnitsInStock = ? "
                + "WHERE ProductID = ?";

        try {

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setInt(3, stock);
            ps.setInt(4, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
