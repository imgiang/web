
package dao;


import entity.Category;
import entity.Comment;
import entity.Customer;
import entity.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author trinh
 */
public class DAO {



    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clothes", "root", "Thuhuong01");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }





    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getTop6() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product limit 6";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNextTop3(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "select*from product\n" +
                "order by id\n" +
                "limit ?,3;";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1,amount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getNewProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT*FROM product\n" +
                "ORDER BY id DESC\n" +
                "limit 6;";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getHotProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT*FROM product\n" +
                "ORDER BY amount DESC\n" +
                "limit 6;";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getGoodProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select*from product \n" +
                "where price< 150;";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select *from category";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                                rs.getString(2)
                        )
                );


            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product"+ "\n" +
                "where cateID=?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql

            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductID(String id) {
        String query = "select * from product"+ "\n" +
                "where id=?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //    giang
    public List<Product> searchProduct (String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                "where match(name, title, description)\n" +
                "AGAINST( ? IN NATURAL LANGUAGE MODE )";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,"'" + txtSearch + "'");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getProductByDetail(String cid,String pid) {
        List<Product> list = new ArrayList<>();
        String query = "select*from product where cateID= ? and id NOT IN( select id from product where id=?) limit 4;";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(2, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Comment> getComment() {
        List<Comment> list = new ArrayList<>();
        String query = "select * from tcomment";
//                + "\n" +
//                "where id=?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
//            ps.setString(1,cmtid);
            rs = ps.executeQuery();
            while (rs.next()) {
                while (rs.next()) {
                    list.add(new Comment(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4)));
                }
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Comment addComment(String cmt, String gmail, String ten, String id) {
        String query = "insert into tcomment values(?,?,?,?);";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,cmt);
            ps.setString(2,gmail);
            ps.setString(3,ten);
            ps.setString(4,id);
            ps.execute();
        } catch (Exception e) {
        }
        return null;
    }
    public Product getProduct(String txt) {
        String query = "select * from product where id = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DAO().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, txt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }




//    public void insertProduct(String name, String image, String price,
//                              String title, String description, String category, int sid) {
//        String query = "INSERT into product \n"
//                + "(name, image, price, title, description, cateID, sell_ID)\n"
//                + "VALUES(?,?,?,?,?,?,?)";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setString(1, name);
//            ps.setString(2, image);
//            ps.setString(3, price);
//            ps.setString(4, title);
//            ps.setString(5, description);
//            ps.setString(6, category);
//            ps.setInt(7, sid);
//            ps.executeUpdate();
//        } catch (Exception e) {
//            conn = new DAO().getConnection();
//        }
//    }
    public List<Customer> getCustomer() {
        List<Customer> list = new ArrayList<>();
        String query = "select * from customer";

        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                while (rs.next()) {
                    list.add(new Customer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7))
                    );
                }
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> DescendingProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product ORDER BY price DESC";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> AscendingProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product ORDER BY price ASC";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),

                        rs.getString(9),
                        rs.getInt(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }



    public Customer checkout(String name, String gioitinh, String diachi,
                             String dienthoai, String email, String cmnd) {
        String query = "insert into customer(name,gioitinh,diachi,dienthoai,email,cmnd) values(?,?,?,?,?,?)";
        try {
            conn = new DAO().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,gioitinh);
            ps.setString(3,diachi);
            ps.setString(4,dienthoai);
            ps.setString(5,email);
            ps.setString(6,cmnd);


            ps.executeUpdate();
        } catch (Exception e) {
        }
        ;
        return null;

    }
    public Customer checkCustomerExist(String cmnd){
        String query = "select * from customer\n"
                + "where cmnd = ?\n";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cmnd);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;


    }
    public void editProduct(String name, String image, String price,
                            String title, String description, String size,String  cateID,String sell_ID,String amount,String id) {
        String query = "update product\n"
                + "set name = ?,\n"
                + "image = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "description = ?,\n"
                + "size = ?,\n"
                + "cateID = ?,\n"
                + "sell_ID = ?,\n"
                + "amount = ?\n"
                + "where id = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, size);
            ps.setString(7, cateID);
            ps.setString(8, size);
            ps.setString(9, amount);
            ps.setString(10, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Product getProduct(int pid) {
        String query = "select * from product where id = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void addToCart(int aid, int pid, int amount) {
        String query = "insert into cart values(?,?,?)";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            ps.setInt(2, pid);
            ps.setInt(3, amount);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void addToProduct(String name, String image, String price,
                             String title, String description, String size,String  cateID,String sell_ID,String amount) {
        String query = "insert into product(name,image,price,description,title, cateid,sell_id,amount) values(?,?,?,?,?,?,?,?)";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, title);
            ps.setString(6, size);
            ps.setString(7, cateID);
            ps.setString(8,sell_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(String id) { //Để kiểu String vì khi get về nó là kiểu String -> Đỡ phải ép kiểu
//        String query = "DELETE FROM Cart WHERE aID = ?,\n"
        String query =      "DELETE FROM Product WHERE ID = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            //Đẩy id vào trong dấu ? thứ nhất
            ps.setString(1, id);
//            ps.setString(2, id);
            //Execute: Ko có bảng Result -> Ko dùng RS, chỉ dùng executeUpdate
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void edit(String name, String image, String price,
                     String title, String description,String cateID,String sell_ID, String size,String amount,String pid) {
        String query = "update product\n"
                + "set name = ?,\n"
                + "image = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "description = ?,\n"
                + "cateID = ?,\n"
                + "sell_ID = ?,\n"
                + "size = ?,\n"
                + "amount = ?\n"
                + "where id = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, cateID);
            ps.setString(7, sell_ID);
            ps.setString(8, size);
            ps.setString(9, amount);
            ps.setString(10, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public void add(String id,String name, String image, String price,
                    String title, String description,String  cateID,String sell_ID, String size,String amount) {
        String query = "insert into product(name,image,price,description,title, cateid,sell_id,size,amount) values(?,?,?,?,?,?,?,?,0)";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, title);
            ps.setString(6, cateID);
            ps.setString(7,sell_ID);
            ps.setString(8, size);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Product getProductByID(String id) {
        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                                rs.getString(9),
                                rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getTop6();
        List<Category> listC = dao.getAllCategory();

        for (Product o : list) {
            System.out.println(o);
        }
    }

}


