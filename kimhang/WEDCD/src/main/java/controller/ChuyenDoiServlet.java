package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ChuyenDoi")
public class ChuyenDoiServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String type = request.getParameter("type");
        String amountStr = request.getParameter("amount");

        double amount = 0;
        double result = 0;
        String message = "";

        try {
            amount = Double.parseDouble(amountStr);
        } catch (Exception e) {
            request.setAttribute("result", "⚠️ Vui lòng nhập số hợp lệ!");
            request.getRequestDispatcher("chuyendoi.jsp")
                   .forward(request, response);
            return;
        }

        if (type == null) {
            request.setAttribute("result", "⚠️ Không chọn loại chuyển đổi!");
            request.getRequestDispatcher("chuyendoi.jsp")
                   .forward(request, response);
            return;
        }

        switch (type) {

            // Km -> Miles
            case "km":
                result = amount * 0.621371;
                message = amount + " Km = " + result + " Miles";
                break;

            // C -> F
            case "cf":
                result = (amount * 9 / 5) + 32;
                message = amount + " °C = " + result + " °F";
                break;

            // USD -> VND
            case "usd":
                result = amount * 26000;
                message = amount + " USD = " + result + " VND";
                break;

            // Gold -> VND
            case "gold":
                result = amount * 7500000;
                message = amount + " chỉ vàng = " + result + " VND";
                break;

            default:
                message = "❌ Loại chuyển đổi không hợp lệ!";
                break;
        }

        // gắn dữ liệu ra JSP
        request.setAttribute("result", message);

        // 👉 QUAN TRỌNG: chuyển về trang sản phẩm (web điện tử của bạn)
        request.getRequestDispatcher("chuyendoi.jsp")
               .forward(request, response);
    }
}