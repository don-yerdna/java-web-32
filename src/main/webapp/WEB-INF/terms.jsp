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
        <div id="menu-terms">
            <div>
                <form action="/term-create" method="get">
                    <input class="menu-term-form-button" id="button-create-term" type="submit"
                           value="Создать семестр..."/>
                </form>
            </div>
            <br>
            <div>
                <form action="/term-modify" method="get">
                    <input class="menu-term-form-button" id="button-modify-term" type="submit"
                           value="Модифицировать текущий семестр..."/>
                    <div style="display: none"><input name="id" type="text" value="${term.id}"></div>
                </form>
            </div>
            <br>

            <div>
                <form action="/term-remove" method="get">
                    <input class="menu-term-form-button" id="button-remove-term" type="submit"
                           value="Удалить текущий семестр"/>
                    <div style="display: none"><input name="id" type="text" value="${term.id}"></div>
                </form>
            </div>
        </div>
        <div id="term-detail">
            <span>Длительность семестра: ${term.duration} </span>
            <h3>Список дисциплин семестра</h3>
            <table>
                <tr>
                    <th id="table-term-col2">Наименование дисциплины</th>
                </tr>
                <c:forEach items="${disciplines}" var="discipline">
                    <tr>
                        <td>${discipline.discipline}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </c:if>
</div>
</body>
</html>