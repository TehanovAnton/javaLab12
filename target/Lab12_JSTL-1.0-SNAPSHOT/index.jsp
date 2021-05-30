<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP - Hello World</title>
    </head>

    <body>
        <c:import url="/header.jsp"/>
        <h1><%= "Hello World!" %></h1>
        <br/>

        <a href="hello-servlet">Hello Servlet</a>
        <br/><br/>

        <c:set var="user" value="guest" scope="page"/>
        <c:if test="${not empty user and user eq 'guest'}">
            User is Guest
        </c:if>
        <br><br>

        <c:if test="${not empty user and user eq 'guest'}"
            var="testOperation" scope="page">
            TRUE, testOperation <c:out value="${testOperation}"/>
        </c:if>
        <br><br>

        <c:set var="user" scope="page">
            guest, вывод текущих значений user:<c:out value="${user}"/> testOperation:<c:out value="${testOperation}"/>
        </c:set>

        <c:out value="${user}"/>
        <c:remove var="user"/>
        <br><br>

        <c:set var="a" value="10" scope="page"/>
        <c:choose>
            <c:when test="${a != 10}">
                <c:out value="a:${a} не равно 10"/>
            </c:when>
            <c:otherwise>
                <c:out value="a:${a} равно 10"/>
            </c:otherwise>
        </c:choose>
        <br><hr><br>

        <c:out value="итератор:"/><br>
        <c:forEach var="el"
                   items="${lst}"
                   varStatus="status">
            <c:out value="     ${el}"/>
        </c:forEach>
        <br>

        <c:out value="begin end итератор:"/><br>
        <c:forEach var="el" items="${lst}"
                   varStatus="status"
                   begin="0"
                   end="1">
            <c:out value="${el}"/>
        </c:forEach>
        <br>

        <c:redirect url="redirect_by_jstl_exemple.jsp">
            <c:param name="param1" value="anton"/>
            <c:param name="param2" value="tehanov"/>
        </c:redirect>
    <c:import url="/footer.jsp"/>
    </body>
</html>