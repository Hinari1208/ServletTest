<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>お問い合わせフォーム</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>お問い合わせフォーム</h1>
        <form action="ContactServlet" method="post">
            <label for="name">氏名:</label>
            <input type="text" id="name" name="name" required><br><br>
            
            <label for="company">会社:</label>
            <input type="text" id="company" name="company"><br><br>
            
            <label for="email">メールアドレス:</label>
            <input type="email" id="email" name="email" required><br><br>
            
            <label for="inquiry">お問い合わせ内容:</label>
            <textarea id="inquiry" name="inquiry" required></textarea><br><br>
            
            <label>メルマガ種類:</label><br>
            <input type="checkbox" id="general" name="newsletter" value="総合案内">
            <label for="general">総合案内</label><br>
            <input type="checkbox" id="seminar" name="newsletter" value="セミナー案内">
            <label for="seminar">セミナー案内</label><br>
            <input type="checkbox" id="product" name="newsletter" value="製品情報">
            <label for="product">製品情報</label><br><br>
            
            <label>資料請求希望:</label><br>
            <input type="radio" id="yes" name="request" value="Yes">
            <label for="yes">Yes</label><br>
            <input type="radio" id="no" name="request" value="No">
            <label for="no">No</label><br><br>
            
            <input type="submit" value="送信">
        </form>
    </div>
</body>
</html>

