package controller;

import dao.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deleteproduct")

public class DeleteProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(request.getParameter("id"));

        ProductDAO dao = new ProductDAO();

        dao.deleteProduct(id);

        request.getRequestDispatcher("/timsanpham")
       .forward(request,response);
    }
}
