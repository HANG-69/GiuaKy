<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Sửa sản phẩm</title>

    <link rel="stylesheet" href="css/main.css">

</head>

<body>

<div class="form-container">

    <h2>SỬA SẢN PHẨM</h2>

    <form action="editproduct" method="post">

        <input
            type="hidden"
            name="id"
            value="<%= request.getParameter("id") %>"
        >

        <input
            type="text"
            name="name"
            placeholder="Tên sản phẩm"
            value="<%= request.getParameter("name") %>"
            required
        >

        <input
            type="number"
            name="price"
            placeholder="Giá"
            value="<%= request.getParameter("price") %>"
            required
        >

        <input
            type="number"
            name="stock"
            placeholder="Số lượng"
            value="<%= request.getParameter("stock") %>"
            required
        >

        <button type="submit">
            Cập nhật
        </button>

    </form>

</div>

</body>

</html>