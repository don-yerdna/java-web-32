<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Students Progress"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="/logout">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="select-terms-student">
        <form action="/student-progress" method="post">
            <span>Выбрать семестр</span>
            <select name="idTerm">
                <c:forEach items="${terms}" var="term">
                    <option value="${term.id}" ${term.id==startIdTerm? 'selected' :''}>${term.term}</option>
                </c:forEach>
            </select>
            <input class="term-button" id="term-select" type="submit" value="Выбрать">
            <input type="hidden" id="student_progress_text" name="idStudent" value="${idStudent}">
        </form>
    </div>


    <div id="table-student-mark">
        <h3>Отображена успеваемость для следующего студента:</h3>
        <table>
            <tr>
                <th id="table-student-mark-col2">Фамилия</th>
                <th id="table-student-mark-col3">Имя</th>
                <th id="table-student-mark-col4">Группа</th>
                <th id="table-student-mark-col5">Дата поступления</th>
            </tr>
            <tr>
                <td>${student.surname}</td>
                <td>${student.name}</td>
                <td>${student.group}</td>
                <td><f:formatDate value="${student.date}" pattern="dd/MM/yyyy"/></td>
            </tr>
        </table>
    </div>

    <div id="table-mark">
        <table>
            <tr>
                <th id="table-mark-col2">Дисциплина</th>
                <th id="table-mark-col3">Оценка</th>
            </tr>
            <c:forEach items="${marks}" var="mark">
                <tr>
                    <td>${mark.discipline.discipline}</td>
                    <td>${mark.mark}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div id="average">
        <span>Средняя оценка за семестр: ${averageMark}</span>
    </div>

</div>

</body>
</html>
