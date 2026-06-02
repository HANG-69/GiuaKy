<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

String id = request.getParameter("id");

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Xóa Sản Phẩm</title>

<style>

body{
    font-family:Arial;
    background:#f4f6f9;
}

.container{
    width:500px;
    margin:100px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
    text-align:center;
}

button{
    padding:12px 20px;
    border:none;
    border-radius:8px;
    cursor:pointer;
    color:white;
}

.delete-btn{
    background:#e74c3c;
}

.back-btn{
    background:#3498db;
}

</style>

</head>

<body>

<div class="container">

    <h2>BẠN CÓ CHẮC MUỐN XÓA?</h2>

    <br>

    <a href="deleteproduct?id=<%= id %>">

        <button class="delete-btn">
            Xóa sản phẩm
        </button>

    </a>

    <br><br>

    <a href="timsanpham">

        <button class="back-btn">
            Hủy
        </button>

    </a>

</div>

</body>

</html>