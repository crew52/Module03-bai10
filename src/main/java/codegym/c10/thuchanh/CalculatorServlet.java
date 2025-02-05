package codegym.c10.thuchanh;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            double num1 = Double.parseDouble(req.getParameter("num1"));
            double num2 = Double.parseDouble(req.getParameter("num2"));
            String operation = req.getParameter("operation");

            Calculator calculator = new Calculator(num1, num2);
            double result = 0;

            switch (operation) {
                case "add":
                    result = calculator.add();
                    break;
                case "subtract":
                    result = calculator.subtract();
                    break;
                case "multiply":
                    result = calculator.multiply();
                    break;
                case "divide":
                    result = calculator.divide();
                    break;
                default:
                    throw new IllegalArgumentException("Phép toán không hợp lệ");
            }

            req.setAttribute("result", result);
        } catch (ArithmeticException e) {
            req.setAttribute("error", e.getMessage());
        } catch (NumberFormatException e) {
            req.setAttribute("error", "Vui lòng nhập số hợp lệ");
        } catch (Exception e) {
            req.setAttribute("error", "Đã xảy ra lỗi không xác định");
        }

        req.getRequestDispatcher("calculate.jsp").forward(req, resp);
    }
}
