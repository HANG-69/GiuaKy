<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Đổi Tiền Tệ</title>
</head>

<body>

<h2>CHUYỂN ĐỔI TIỀN TỆ SANG VND</h2>

<form action="<%= request.getContextPath() %>/chuyendoi"
      method="post">

    Nhập số tiền:
    <input type="text" name="amount">

    <br><br>

    Chọn loại tiền:

    <select name="currency">
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
        <option value="JPY">JPY</option>
    </select>

    <br><br>

    <button type="submit">
        Chuyển đổi
    </button>

</form>

<%
    Object result = request.getAttribute("result");
    Object currency = request.getAttribute("currency");

    if(result != null){
%>

<h3>
    Kết quả:
    <%= result %> VND
    (từ <%= currency %>)
</h3>

<%
    }
%>

</body>
</html>