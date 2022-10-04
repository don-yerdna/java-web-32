<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Disciplines' List"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <div id="menu-disciplines">
        <div>
            <input class="menu-discipline-form-button" id="button-create-discipline" onclick="createDiscipline()"
                   type="submit" value="Создать дисциплину..."/>
        </div>
        <br>
        <div>
            <input class="menu-discipline-form-button" id="button-modify-discipline" onclick="modifyDiscipline()"
                   type="submit" value="Модифицировать выбранную дисциплину..."/>
        </div>
        <br>
        <div>
            <input class="menu-discipline-form-button" id="button-remove-discipline" onclick="removeDiscipline()"
                   type="submit" value="Удалить выбранную дисциплину"/>
        </div>
    </div>
    <div id="table-disciplines">
        <h3>Список дисциплин</h3>
        <table>
            <tr>
                <th id="table-discipline-col1"></th>
                <th id="table-discipline-col2">Наименование дисциплины</th>
            </tr>
            <c:forEach items="${disciplines}" var="discipline">
                <tr>
                    <td class="checkbox"><input type="checkbox" name="id" value="${discipline.id}"></td>
                    <td>${discipline.discipline}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<form id="createDisciplineForm" action="/discipline-create" method="get">
</form>
<form id="modifyDisciplineForm" action="/discipline-modify" method="get">
    <input type="hidden" id="discipline_check_text" name="id" value="">
</form>
<form id="removeDisciplineForm" action="/discipline-remove" method="get">
    <input type="hidden" id="discipline_remove_text" name="id" value="">
</form>
</body>
</html>
