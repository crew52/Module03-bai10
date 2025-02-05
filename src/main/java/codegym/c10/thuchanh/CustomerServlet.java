package codegym.c10.thuchanh;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name= "customerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer(1, "Dung", 23));
        customerList.add(new Customer(2, "Son", 30));
        customerList.add(new Customer(3, "VA", 25));

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("customer.jsp");
        req.setAttribute("customerList", customerList);
        requestDispatcher.forward(req, resp);
    }
}
