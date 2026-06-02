<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>

<%

    List<Product> listProduct =
            (List<Product>) request.getAttribute("listProduct");

    String keyword = request.getParameter("q");

    if(listProduct == null){

        ProductDAO dao = new ProductDAO();

        listProduct = dao.getAllProducts();
    }

    if(keyword == null){
        keyword = "";
    }

%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Thiết Bị Điện Tử</title>

    <link rel="stylesheet" href="css/main.css">

</head>

<body>

<div class="container">

    <div class="header">

        <h1>THIẾT BỊ ĐIỆN TỬ</h1>

        <a href="addproduct.jsp" class="add-btn">
            + Thêm sản phẩm
        </a>

    </div>

    <form action="timsanpham"
          method="post"
          class="search-box">

        <input
            type="text"
            name="q"
            placeholder="Nhập tên thiết bị..."
            value="<%= keyword %>"
        >

        <button type="submit">
            Tìm kiếm
        </button>

    </form>

    <div class="product-grid">

    <%

        if(listProduct != null){

            for(Product p : listProduct){

    %>

        <div class="product-card">

            <img
                src="<%= p.getImageURL() %>"
                alt="product"
                class="product-img"
            >

            <div class="product-info">

                <h3>
                    <%= p.getProductName() %>
                </h3>

                <p class="price">
                    <%= String.format("%,.0f", p.getUnitPrice()) %> đ
                </p>

                <p class="stock">
                    Còn <%= p.getUnitsInStock() %> sản phẩm
                </p>

                <div class="action">

                    <a
                        href="editproduct.jsp?id=<%= p.getProductID() %>"
                        &name=<%= p.getProductName() %>
                        &price=<%= p.getUnitPrice() %>
                        &stock=<%= p.getUnitsInStock() %>"
                        class="edit-btn"
                    >
                        Sửa
                    </a>

                    <a
                        href="deleteproduct?id=<%= p.getProductID() %>"
                        class="delete-btn"
                    >
                        Xóa
                    </a>

                </div>

            </div>

        </div>

    <%

            }

        }

    %>

    </div>

</div>

</body>

</html>
