package entity;

/**
 *
 * @author pc
 */
public class Account {
    private int uid;
    private String username;
    private String password;
    private int isSeller;
    private int isAdmin;

    public Account() {
    }

    public Account(int uid, String username, String password) {
        this.uid = uid;
        this.username = username;
        this.password = password;
    }

    public Account(int uid, String username, String password, int isSeller, int isAdmin) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.isSeller = isSeller;
        this.isAdmin = isAdmin;
    }


    public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getIsSeller() {
        return isSeller;
    }

    public void setIsSeller(int isSeller) {
        this.isSeller = isSeller;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + '}';
    }

}