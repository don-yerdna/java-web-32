<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../resources/css/styles.css">
    <title>Students List</title>

</head>
<body>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <input id="menu-student">
        <button id="button-view-student">Просмотреть успеваемость выбранных студентов</button>
        <button id="button-modify-student">Модифицировать выбранного студента...</button>
        <form action="/student-create" method="get">
            <input type="submit" id="button-create-student" value="Создать студента..."/>
        </form>
        <button id="button-remove-student">Удалить выбранных студентов</button>
    </div>
    <div id="table-student">
        <h3>Список студентов</h3>
        <table>
            <tr>
                <th id="table-student-col1"></th>
                <th id="table-student-col2">Фамилия</th>
                <th id="table-student-col3">Имя</th>
                <th id="table-student-col4">Группа</th>
                <th id="table-student-col5">Дата поступления</th>
            </tr>
            <c:forEach items="${students}" var="student">
                <tr>
                    <td class="checkbox"><input type="checkbox"></td>
                    <td>${student.surname}</td>
                    <td>${student.name}</td>
                    <td>${student.group}</td>
                    <td><f:formatDate value="${student.date}" pattern="dd/MM/yyyy"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
