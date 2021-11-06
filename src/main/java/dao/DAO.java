package dao;


import entity.*;

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
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "tung03102001");
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
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getTop3() {
        List<Product> list = new ArrayList<>();
        String query = "select * from  product order by id limit 5;";
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
                        rs.getString(6)));
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
                        rs.getString(6)));
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
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //    giang
    public List<Product> searchProduct (String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n" +
                "where match(name, price, title, description)\n" +
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
                        rs.getString(6)));
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
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getTop() {
        List<Product> list = new ArrayList<>();
        String query = "select * from  product order by id limit 8;";
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
                        rs.getString(6)));
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
//    làm cart
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
    public void addToProduct(String name, String image, String price, String title, String cateid, String sell_id) {
        String query = "insert into product(name,image,price,title, cateid,sell_id) values(?,?,?,?,?,?)";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, cateid);
           ps.setString(6,sell_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProduct(int pid) {
        String query = "delete from product where id = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
//
//    public Account login(String user, String pass) {
//        String query = "select * from account\n"
//                + "where user = ?\n"
//                + "and pass = ?";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setString(1, user);
//            ps.setString(2, pass);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Account(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getInt(4),
//                        rs.getInt(5));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }
//    public Account checkAccountExist(String user) {
//        String query = "select * from account\n"
//                + "where user = ?\n";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setString(1, user);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Account(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getInt(4),
//                        rs.getInt(5));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }
//    public void singup(String user, String pass) {
//        String query = " insert into account" +
//                "(user,pass,isSell,isAdmin) " +
//                "values(?,?,0,0);";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setString(1, user);
//            ps.setString(2, pass);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//public List<Product> pagingManagerProduct(int index, int SellerID) {
//    List<Product> list = new ArrayList<>();
//    if (SellerID == 0) {
//        list = pagingProduct(index);
//    } else {
//        String query = "SELECT * FROM Product WHERE sell_id = ? ORDER BY id  OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, SellerID);
//            ps.setInt(2, (index - 1) * 6);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5)));
//            }
//        } catch (Exception e) {
//        }
//    }
//    return list;
//}

//    public void insertProduct(String name, String image, String price,
//                              String title, String description, String cateID, String sell_ID,int amount) {
//        String query = "INSERT into product \n"
//                + "(name, image, price, title, description, cateID, sell_ID,amount)\n"
//                + "VALUES(?,?,?,?,?,?,?,?)";
//        try {
//            conn = new DAO().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            ps.setString(1, name);
//            ps.setString(2, image);
//            ps.setString(3, price);
//            ps.setString(4, title);
//            ps.setString(5, description);
//            ps.setString(6, cateID);
//            ps.setString(7, sell_ID);
//            ps.setInt(8, amount);
//            ps.executeUpdate();
//        } catch (Exception e) {
//            conn = new DAO().getConnection();
//        }
//    }

    public void editProduct(int id,String name, String image, String price,
                            String title, String description, String cateID,String sell_ID,int amount) {
        String query = "update product\n"
                + "set name = ?,\n"
                + "image = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "description = ?,\n"
                + "cateID = ?,\n"
                + "sell_ID=?,\n"
                + "amount=?"
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
            ps.setString(7,sell_ID);
            ps.setInt(8, amount);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Customer> getCustomer() {
        List<Customer> list = new ArrayList<>();
        String query = "select * from customer";

        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                while (rs.next()) {
                    list.add(new Customer(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6))
                    );
                }
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

    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where user = ?\n";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void singup(String user, String pass) {
        String query = " insert into account" +
                "(user,pass,isSell,isAdmin) " +
                "values(?,?,0,0);";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void edit(String id, String name,  String image,String price,String title,String description,  String cateID, String sell_ID) {
        String query = "UPDATE Product\n"
                + "SET name = ?,\n"
                + "image = ?,\n"
                + "Price = ?,\n"
                + "title = ?,\n"
                + "Description = ?,\n"
               
              
                + "CateID = ?,\n"
                + "Sell_ID = ?"
//                + "Amount = ?\n"
                + "WHERE ID = ?";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            //Set dữ liệu vào dấu ?

            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(4, image);
            ps.setString(5, cateID);
            ps.setString(6, sell_ID);

            ps.setString(8, id);
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

    public void add(String id, String name,  String image,String price,String title,String description , String cateID, String sell_ID) {
        String query = "INSERT INTO Product VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DAO().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            //Set dữ liệu vào dấu ?
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
//            ps.setString(5, size);

            ps.setString(6, cateID);
            ps.setString(7,sell_ID);
//            ps.setInt(8, amount);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }



    public static void main(String[] args){
        try{
            System.out.println(new DAO().getConnection());
        }catch (Exception e){
        }
    }
}
//phân trang
//    dem so luong account
//    public int getTotalAccount(){
//        String query="select count(*) from acount";
//        try{
//            conn = new DAO().getConnection();
//            ps = conn.prepareStatement(query);
//            rs=ps.executeQuery();
//            while (rs.next()){
//                return rs.getInt(1);
//            }
//        }
//        catch (Exception e){
//
//        }
//        return 0;
//    }
//    public List<Account> pagingAccount(int index){
//    List<Account> list =new ArrayList<>();
//    String query= "SELECT * FROM account \n"
//            +"ORDER BY uid \n "
//            +"OFFSET ? ROWS FETCH NEXT 6 ROW ONLY;";
//    try{
//        conn = new DAO().getConnection();
//        ps = conn.prepareStatement(query);
//        ps.setInt(1,(index -1)*6);
//
//        rs = ps.executeQuery();
//        while (rs.next()){
//            list.add(new Account(rs.getInt(1),
//                            rs.getString(2),
//                            rs.getString(3),
//                            rs.getInt(4),
//                            rs.getInt(5)
//
//
//                    )
//                    );
//        }
//
//    } catch (Exception e){
//
//    }
//
//    return list;
//    }
//
//
//
//    public static void main(String[] args){
//        DAO dao=new DAO();
////        int count=dao.getTotalAccount();
////        System.out.println(count);
//        List<Account> list = dao.pagingAccount(1);
//        for (Account o :list){
//            System.out.println(o);
//        }
//    }

//    giang

    //    public static void main(String[] args) {
//
//
//        try {
//            System.out.println(new DAO().getConnection());
//            System.out.println("Succes!!!!!!!!!!!!");
//        } catch (Exception e) {
//
//        }
//    }
//    public static void main(String[] args) {

//        DAO dao = new DAO();
//////        List<Product> list = dao.getAllProduct();
//        List<Category> listC = dao.getAllCategory();
////        List<Product> listPC = dao.getProductCID("2");
////        Product listPI = dao.getProductID("2");
//
//        DAO dao1 = new DAO();
//        List<Comment> listu = dao1.getComment();
//        System.out.println(listu);
//        System.out.println(new DAO().getConnection());
        //Comment addcmt = dao1.addComment("quan nay dep ghe", "thuygiang768@gmail.com", "giang", "1");


