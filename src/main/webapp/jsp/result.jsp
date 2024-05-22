<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>お問い合わせ内容の確認</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>お問い合わせ内容の確認</h1>
        <p>氏名: ${requestScope.name}</p>
        <p>会社: ${requestScope.company}</p>
        <p>メールアドレス: ${requestScope.email}</p>
        <p>お問い合わせ内容: ${requestScope.inquiry}</p>
        
        <% String[] newsletters = request.getParameterValues("newsletter");
    
    if (newsletters != null && newsletters.length > 0) {
        out.println("<p>メルマガ種類:</p>");
        out.println("<ul>");
        for (String newsletter : newsletters) {
            out.println("<li>" + newsletter + "</li>");
        }
        out.println("</ul>");
    } else {
        out.println("<p>メルマガは選択されていません。</p>");
    }%>
          <p>資料請求希望: ${requestScope.requestMaterials}</p>

        <c:choose>
            <c:when test="${requestScope.requestMaterials == 'Yes'}">
                <p>この度は資料請求ありがとうございます。以下のリンクから資料ダウンロードが可能です。</p>
                <a href="#">資料ダウンロード</a>
            </c:when>
            <c:otherwise>
                <p></p>
            </c:otherwise>
        </c:choose>

        
    </div>
</body>
</html>

