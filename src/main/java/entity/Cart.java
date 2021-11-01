package entity;

/**
 *
 * @author pc
 */
public class Cart {
    private int pid;
    private int amount;

    public Cart() {
    }

    @Override
    public String toString() {
        return "Cart{" +
                "pid=" + pid +
                ", amount=" + amount +
                '}';
    }

    public Cart(int pid, int amount) {
        this.pid = pid;
        this.amount = amount;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

}
//package entity;
//
//public class Cart {
//    private Product p;
//    private int amount;
//
//    public Cart() {
//    }
//
//    public Cart(Product p, int amount) {
//        this.p = p;
//        this.amount = amount;
//    }
//
//    public Product getP() {
//        return p;
//    }
//
//    public void setP(Product p) {
//        this.p = p;
//    }
//
//    public int getAmount() {
//        return amount;
//    }
//
//    public void setAmount(int amount) {
//        this.amount = amount;
//    }
//
//    @Override
//    public String toString() {
//        return "Cart{" + "p=" + p + ", amount=" + amount + '}';
//    }
//
//
//}