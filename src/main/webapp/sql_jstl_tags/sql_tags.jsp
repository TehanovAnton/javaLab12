<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 20.05.2021
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.microsoft.sqlserver.jdbc.SQLServerDriver" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <sql:setDataSource var="db"
                       driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                       url="jdbc:sqlserver://localhost;database=javaLab_12"
                       user="Anton"
                       password="ewqqwe"/>

    <sql:update dataSource="${db}" var="count">
        insert into test_table(k, v)
            values(2, 'tehanov')
    </sql:update>
    <sql:query dataSource="${db}" var="rs">
        select * from test_table
    </sql:query>
    <c:forEach var="el" items="${rs.rows}">
        <c:out value="${el.k} : ${el.v}"/><br>
    </c:forEach>
    <c:set var="k" value="2"/>
    <sql:update dataSource="${db}" var="count">
        delete from test_table where k = ?
        <sql:param value="${k}"/>
    </sql:update>
</body>
</html>
