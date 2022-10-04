<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp"%>
<body>
<script>
    document.title = "Students List"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <div id="menu-student">
        <div >
            <input class="menu-student-form-button" id="button-view-student" onclick="progressStudent()" type="submit" value="Просмотреть успеваемость выбранных студентов"/>
        </div>
        <div>
            <input class="menu-student-form-button" id="button-modify-student" onclick="modifyStudent()" type="submit" value="Модифицировать выбранного студента..."/>
        </div>
        <div>
            <input class="menu-student-form-button" id="button-create-student" onclick="createStudent()" type="submit" value="Создать студента..."/>
        </div>
        <div>
            <input class="menu-student-form-button" id="button-remove-student" onclick="removeStudents()" type="submit" value="Удалить выбранных студентов"/>
        </div>
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
                    <td class="checkbox"><input type="checkbox" name="id" value="${student.id}"></td>
                    <td>${student.surname}</td>
                    <td>${student.name}</td>
                    <td>${student.group}</td>
                    <td><f:formatDate value="${student.date}" pattern="dd/MM/yyyy"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<form id="createStudentForm" action="/student-create" method="get">
</form>
<form id="deleteStudentForm" action="/student-remove" method="get">
    <input type="hidden" id="student_remove_text" name="id" value="">
</form>
<form id="modifyStudentForm" action="/student-modify" method="get" >
    <input type="hidden" id="student_check_text" name="id" value="">
</form>
<form id="progressStudentForm" action="/student-progress" method="get">
    <input type="hidden" id="student_progress_text" name="idStudent" value="">
</form>
</body>
</html>
