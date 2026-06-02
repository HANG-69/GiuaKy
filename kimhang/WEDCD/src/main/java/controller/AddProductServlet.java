package controller;

import dao.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/addproduct")

public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");

        double price =
                Double.parseDouble(request.getParameter("price"));

        int stock =
                Integer.parseInt(request.getParameter("stock"));

        String imageURL =
                request.getParameter("imageURL");

        ProductDAO dao = new ProductDAO();

        dao.insertProduct(name, price, stock, imageURL);

        response.sendRedirect("listsanpham.jsp");
    }
}
