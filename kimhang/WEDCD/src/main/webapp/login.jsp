<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Đăng nhập hệ thống</title>

<style>

body{
    margin:0;
    font-family:Arial;
    background:#f4f6f9;

    display:flex;
    justify-content:center;
    align-items:center;

    height:100vh;
}

.login-box{

    width:400px;

    background:white;

    padding:30px;

    border-radius:10px;

    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

h2{

    text-align:center;

    margin-bottom:20px;

    color:#333;
}

input{

    width:100%;

    padding:12px;

    margin-bottom:15px;

    border:1px solid #ccc;

    border-radius:5px;
}

button{

    width:100%;

    padding:12px;

    border:none;

    background:#007bff;

    color:white;

    font-size:16px;

    cursor:pointer;

    border-radius:5px;
}

button:hover{

    background:#0056b3;
}

.error{

    color:red;

    text-align:center;

    margin-bottom:15px;
}

</style>

</head>

<body>

<div class="login-box">

    <h2>ĐĂNG NHẬP HỆ THỐNG</h2>

    <% if(request.getParameter("error") != null){ %>

        <div class="error">
            Sai tài khoản hoặc mật khẩu
        </div>

    <% } %>

    <form action="login" method="post">

        <input
            type="text"
            name="username"
            placeholder="Tên đăng nhập"
            required>

        <input
            type="password"
            name="password"
            placeholder="Mật khẩu"
            required>

        <button type="submit">

            Đăng nhập

        </button>

    </form>

</div>

</body>
</html>