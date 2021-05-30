<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 20.05.2021
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="currentNUmber" value="118000"/>
    <c:out value="вывод формата числа: ${currentNUmber}"/><br>
        форат по умолчанию:
            <fmt:formatNumber value="${currentNUmber}"/><br><hr>

        процентный формат:
            <fmt:formatNumber value="${currentNUmber}" type="percent"/><br><hr>

        Белоруские рубли:
            <fmt:setLocale value="be-BY"/>
            <fmt:formatNumber value="${currentNUmber}" type="currency"/><br><hr>

        французкая валюта:
            <fmt:setLocale value="fr_FR"/>
            <fmt:formatNumber value="${currentNUmber}" type="currency"/>

        <fmt:setLocale value="en-US" scope="session"/>
        <fmt:setBundle basename="resource.pagecontent" var="rb"/><br>


        <fmt:message key="label.title" bundle="${rb}"/>
</body>
</html>
