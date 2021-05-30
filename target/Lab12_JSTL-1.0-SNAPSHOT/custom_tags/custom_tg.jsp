<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 22.05.2021
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    <sql:setDataSource var="db"--%>
<%--                       driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"--%>
<%--                       url="jdbc:sqlserver://localhost;database=javaLab_12"--%>
<%--                       user="Anton"--%>
<%--                       password="ewqqwe"/>--%>
<%--    <sql:query dataSource="${db}" var="rs">--%>
<%--        select * from test_table--%>
<%--    </sql:query>--%>

<%--    <table border="2" width="50%">--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>First_Name</th>--%>
<%--        </tr>--%>
<%--        <c:forEach var="el" items="${rs.rows}">--%>
<%--            <tr>--%>
<%--                <td><c:out value="${el.k}"/></td>--%>
<%--                <td><c:out value="${el.v}"/></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
    <%--    <%@taglib prefix="myshortname2" uri="customtags2" %>--%>
<%--    ${pageContext.request.setAttribute("user", "admin")}--%>
<%--    <myshortname2:attr usertype="${user}"/>--%>

<%--    <%@ taglib prefix="er" uri="ent_reg" %>--%>
<%--    <er:ent_reg/>--%>

    <%@taglib prefix="qt" uri="que_tab"%>
    <qt:que_tab tableName="test_table"/>
</body>
</html>
