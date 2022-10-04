<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Discipline Mofdify"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="discipline-form">
        <h3>Для того чтобы модифицировать дисциплину введите новое значение и нажмите кнопку "Применить":</h3>
        <form action="discipline-modify" method="post">
            <div class="discipline-label"><label>Название</label></div>
            <div><input class="create-discipline-input" name="discipline" type="text" value="${discipline.discipline}">
            </div>
            <br>
            <div style="display: none"><input name="id" type="text" value="${discipline.id}"></div>
            <div style="display: none"></div>
            <br>

            <input class="create-discipline-form-button" type="submit" value="Применить"/>
        </form>
    </div>

</div>

</body>
</html>

