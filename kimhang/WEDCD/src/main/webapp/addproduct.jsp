<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Thêm sản phẩm</title>

    <link rel="stylesheet" href="css/main.css">

</head>

<body>

<div class="form-container">

    <h2>THÊM SẢN PHẨM</h2>

    <form action="addproduct" method="post">

        <input
            type="text"
            name="name"
            placeholder="Tên sản phẩm"
            required
        >

        <input
            type="number"
            name="price"
            placeholder="Giá"
            required
        >

        <input
            type="number"
            name="stock"
            placeholder="Số lượng"
            required
        >

        <input
            type="text"
            name="imageURL"
            placeholder="Link hình ảnh"
            required
        >

        <button type="submit">
            Thêm sản phẩm
        </button>

    </form>

</div>

</body>

</html>