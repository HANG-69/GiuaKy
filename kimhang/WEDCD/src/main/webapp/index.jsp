<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Tech Store</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f6f9;
}

/* HEADER */

header{
    background:#111827;
    color:white;
}

.topbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 50px;
}

.logo{
    font-size:28px;
    font-weight:bold;
    color:#00bcd4;
}

.menu ul{
    display:flex;
    list-style:none;
    gap:25px;
}

.menu ul li a{
    color:white;
    text-decoration:none;
    transition:0.3s;
}

.menu ul li a:hover{
    color:#00bcd4;
}

/* HERO */

.hero{
    height:400px;
    background:
        linear-gradient(
            rgba(0,0,0,0.5),
            rgba(0,0,0,0.5)
        ),
        url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?q=80&w=1400');

    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero-content h1{
    font-size:50px;
    margin-bottom:20px;
}

.hero-content p{
    font-size:20px;
    margin-bottom:25px;
}

.hero-content a{
    padding:14px 30px;
    background:#00bcd4;
    color:white;
    text-decoration:none;
    border-radius:10px;
    transition:0.3s;
}

.hero-content a:hover{
    background:#0097a7;
}

/* CONTENT */

#body-wrapper{
    padding:40px;
}

/* FOOTER */

footer{
    background:#111827;
    color:white;
    text-align:center;
    padding:25px;
    margin-top:40px;
}

footer a{
    color:#00bcd4;
    text-decoration:none;
}

</style>

</head>

<body>

<!-- HEADER -->

<header>

    <div class="topbar">

        <div class="logo">
            TECH STORE
        </div>

        <nav class="menu">

            <ul>

                <li>
                    <a href="#">Trang Chủ</a>
                </li>

                <li>
                    <a href="#">Sản Phẩm</a>
                </li>

                <li>
                    <a href="#">Laptop</a>
                </li>

                <li>
                    <a href="#">Điện Thoại</a>
                </li>

                <li>
                    <a href="#">Liên Hệ</a>
                </li>

            </ul>

        </nav>

    </div>

</header>

<!-- HERO -->

<section class="hero">

    <div class="hero-content">

        <h1>
            CỬA HÀNG THIẾT BỊ ĐIỆN TỬ
        </h1>

        <p>
            Chuyên Laptop, Điện Thoại, Gaming Gear Chính Hãng
        </p>

        <a href="#body-wrapper">
            Xem Sản Phẩm
        </a>

    </div>

</section>

<!-- DANH SÁCH SẢN PHẨM -->

<div id="body-wrapper">

    <jsp:include page="listsanpham.jsp" />

</div>

<!-- FOOTER -->

<footer>

    <p>
        © 2026 TECH STORE.
        All Rights Reserved.
    </p>

    <p>
        Email: techstore@gmail.com
        |
        Hotline: 0909 999 999
    </p>

</footer>

</body>
</html>