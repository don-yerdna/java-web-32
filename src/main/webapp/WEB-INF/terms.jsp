<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../resources/css/styles.css">

    <title>Terms List</title>

</head>
<body>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>

    <div id="select-terms">
        <form action="/terms" method="post">
            <span>Выбрать семестр</span>
            <select name="id">
                <c:forEach items="${terms}" var="term">
                    <option value="${term.id}">${term.term}</option>
                </c:forEach>
            </select>
            <input class="term-button" id="term-select" type="submit" value="Выбрать">

        </form>
    </div>
    <c:if test="${disciplines != null}">
        <jsp:include page="terms-body.jsp"/>
    </c:if>
</div>
</body>
</html>