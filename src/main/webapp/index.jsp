<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/header.jsp" %>
<body>
<script>
    document.title = "Title Page"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="/logout">Logout</a>
    <div id="menu-title">
        <div id="button-student"><a href="/students">Студенты</a></div>
        <div id="buton-discipline"><a href="/disciplines">Дисциплины</a></div>
        <div id="button-term"><a href="/terms">Семестры</a></div>
    </div>
</div>

</body>
</html>