<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Term Creating"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="/logout">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="term-form">
        <h3>Для создания семестра заполните следующие данные и нажмите кнопку "Создать":</h3>
        <form action="term-create" method="post">
            <div class="term-label"><label>Длительность (в неделях)</label></div>
            <div><input class="create-term-duration-input" name="duration" type="text"></div>
            <br>
            <div class="term-label"><label>Дисциплины в семестре</label></div>
            <div>
                <select id="select-active-term" multiple name="idDisc">
                    <c:forEach items="${disciplines}" var="discipline">
                        <option value="${discipline.id}">${discipline.discipline}</option>
                    </c:forEach>
                </select>
            </div>
            <br>
            <input type="hidden" id="active-terms-ids" name="ids" value="">
            <input class="create-term-form-button" type="submit" value="Создать"/>
        </form>
    </div>

</div>

<script>
    text = document.getElementById("active-terms-ids")
    $('#select-active-term').change(function () {
        var arr = $(this).val();
        text.value = arr
    })
</script>
</body>
</html>

