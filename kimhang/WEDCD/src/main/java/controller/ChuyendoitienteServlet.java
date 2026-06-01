package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/chuyendoi")
public class ChuyendoitienteServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        double amount =
                Double.parseDouble(request.getParameter("amount"));

        String currency =
                request.getParameter("currency");

        double result = 0;

        if(currency.equals("USD")) {
            result = amount * 26000;
        }
        else if(currency.equals("EUR")) {
            result = amount * 29000;
        }
        else if(currency.equals("JPY")) {
            result = amount * 180;
        }

        request.setAttribute("result", result);
        request.setAttribute("currency", currency);

        request.getRequestDispatcher("/doitiente.jsp")
       .forward(request, response);
    }
}