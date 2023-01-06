public class Quadratic {
    public static void main(String[] args) {

    }

    public static void solveQuadratic(double a, double b, double c) {
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    System.out.println("Phương trình có vô số nghiệm");
                } else {
                    System.out.println("Phương trình vô nghiệm");
                }
            } else {
                System.out.print("Phương trình có nghiệm duy nhất x = " + (-c / b));
            }
        } else {
            double delta = b * b - 4 * a * c;
            if (delta < 0) {
                System.out.println("Phương trình vô nghiệm");
            } else if (delta > 0) {
                System.out.print("Phương trình có nghiệm x1 = " + ((-b + Math.sqrt(delta)) / (2 * a)));
                System.out.print("Phương trình có nghiệm x2 = " + ((-b - Math.sqrt(delta)) / (2 * a)));
            } else {
                System.out.print("Phương trình có nghiệm kép x1 = x2 = " + (-b / (2 * a)));
            }
        }
    }
}