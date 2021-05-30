<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 20.05.2021
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="java.util.Date" %>--%>
<%--<%@ page import="java.time.LocalDateTime" %>--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>примеры форматирующих тегов</title>
</head>
<body>
    <jsp:useBean id="now" class="java.util.Date"/>

        вывод даты в формате English<br>
    <fmt:setLocale value="en-EN"/>
    Сегодня: <fmt:formatDate value="${now}"/><br>

        вывод даты в формате Russian<br>
    <fmt:setLocale value="ru-RU"/>
    Сегодня:
    (short):<fmt:formatDate value="${now}"
                            type="time"
                            timeStyle="short"/>
    (medium):<fmt:formatDate value="${now}"
                            type="time"
                            timeStyle="medium"/>
    (long):<fmt:formatDate value="${now}"
                            type="time"
                            timeStyle="long"/>
    <br>
    <a href="formatNumbers">format numbers</a>
</body>
</html>