<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 2/4/2025
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    // Khởi tạo dữ liệu từ điển một lần duy nhất
    if (dic.isEmpty()) {
        dic.put("hello", "Xin chào");
        dic.put("how", "Thế nào");
        dic.put("book", "Quyển vở");
        dic.put("computer", "Máy tính");
    }

    String search = request.getParameter("search");
    if (search != null && !search.isEmpty()) {
        String result = dic.get(search.toLowerCase());
%>
<h3>Word: <%= search %></h3>
<h4>Result: <%= (result != null ? result : "Not found") %></h4>
<%
    }
%>
</body>
</html>