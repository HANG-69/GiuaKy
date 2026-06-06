<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chuyển đổi đa chức năng</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            width: 450px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
        }

        .title {
            font-weight: bold;
            text-align: center;
            color: #333;
        }

        .result-box {
            background: #f8f9fa;
            padding: 10px;
            border-radius: 8px;
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
            color: #0d6efd;
        }
    </style>
</head>

<body>

<div class="card p-4">

    <h3 class="title mb-3">🔄 CHUYỂN ĐỔI ĐA CHỨC NĂNG</h3>

    <form action="ChuyenDoi" method="post">

        <div class="mb-3">
            <label class="form-label">Nhập giá trị</label>
            <input type="text" name="amount" class="form-control" placeholder="Nhập số..." required>
        </div>

        <div class="mb-3">
            <label class="form-label">Chọn loại chuyển đổi</label>
            <select name="type" class="form-select">
                <option value="km">Km → Miles</option>
                <option value="cf">C → F</option>
                <option value="usd">USD → VND</option>
                <option value="gold">Vàng → VND</option>
            </select>
        </div>

        <button class="btn btn-primary w-100">Chuyển đổi</button>

    </form>

    <%
        Object result = request.getAttribute("result");
        if(result != null){
    %>

        <div class="result-box mt-3">
            <%= result %>
        </div>

    <%
        }
    %>

</div>

</body>
</html>