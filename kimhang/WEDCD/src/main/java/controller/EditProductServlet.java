package controller;

import dao.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/editproduct")

public class EditProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        int id =
                Integer.parseInt(request.getParameter("id"));

        String name =
                request.getParameter("name");

        double price =
                Double.parseDouble(request.getParameter("price"));

        int stock =
                Integer.parseInt(request.getParameter("stock"));

        ProductDAO dao = new ProductDAO();

        dao.updateProduct(id, name, price, stock);

        response.sendRedirect("listsanpham.jsp");
    }
}