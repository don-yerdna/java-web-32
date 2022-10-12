<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<body>
<script>
    document.title = "login"
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <div id="login-form">
        <form action="login" method="post">
            <div class="login-role-label"><label>Выберите роль:</label>

                <select id="login-select-role" name="role">
                    <c:forEach items="${roles}" var="role">
                        <option value="${role.id}">${role.role}</option>
                    </c:forEach>
                </select>
            </div>
            <br>
            <div class="login-label"><label>Логин</label></div>
            <div><input class="login-input" name="login" type="text"></div>
            <br>
            <div class="login-label"><label>Пароль</label></div>
            <div><input class="login-input" name="password" type="password"></div>
            <br>
            <input class="login-form-button" type="submit" value="Войти"/>

        </form>
    </div>
    <c:if test="${error eq 1}">
        <div class="error-login">
            <span>Поля не должны быть пустыми!</span>
        </div>
    </c:if>
    <c:if test="${error eq 2}">
        <div class="error-login">
            <span>Не верно введен логин или пароль, или не верно выбрана роль</span>
        </div>
    </c:if>
</div>
</body>
</html>
