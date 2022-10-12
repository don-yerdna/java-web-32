<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp"%>
<body>
<script>
    document.title = "Term Modify"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="/logout">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="term-form">
        <h3>Для модификации семестра отредактируйте данные и нажмите кнопку "Применить":</h3>
        <form action="term-modify" method="post">
            <div class="term-label"><label>Длительность (в неделях)</label></div>
            <div><input class="create-term-duration-input" name="duration" type="text" value="${term.duration}"></div>
            <br>
            <div class="term-label"><label>Дисциплины в семестре</label></div>
            <div>
                <select id="select-active-term" multiple name="idDisc">
                    <c:forEach items="${dDisciplines}" var="dDisciplines">
                        <option value="${dDisciplines.id}" ${dDisciplines.term==true? 'selected' :''}>${dDisciplines.discipline}</option>
                    </c:forEach>
                </select>
            </div>
            <br>
            <input type="hidden" id="active-terms-ids" name="ids" value="${idDis}">
            <input type="hidden" id="terms-id" name="id" value="${term.id}">
            <input class="create-term-form-button" type="submit" value="Применить"/>
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

