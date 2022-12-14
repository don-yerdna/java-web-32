<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Discipline Creating"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="/login">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="discipline-form">
        <h3>Для того что создать новую дисциплину заполните все поля и нажмите кнопку "Создать":</h3>
        <form action="discipline-create" method="post">
            <div class="discipline-label"><label>Название</label></div>
            <div><input class="create-discipline-input" name="discipline" type="text"></div>
            <br>
            <input class="create-discipline-form-button" type="submit" value="Создать"/>
        </form>
    </div>

</div>

</body>
</html>

