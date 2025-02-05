package codegym.c10.thuchanh;

public class Calculator {
    private double num01;
    private double num02;

    public Calculator(double num01, double num02) {
        this.num01 = num01;
        this.num02 = num02;
    }

    public double getNum01() {
        return num01;
    }

    public double getNum02() {
        return num02;
    }

    public double add(){
        return num01 + num02;
    }
    public double subtract(){
        return num01 - num02;
    }
    public double multiply(){
        return num01 * num02;
    }
    public double divide(){
        if (num02 == 0) {
            throw new ArithmeticException("Không thể chia cho 0");
        }
        return num01 / num02;
    }
}
