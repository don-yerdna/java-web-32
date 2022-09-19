<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../resources/css/styles.css">
    <title>Student Creating</title>

</head>
<body>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="student-form">
        <h3>Для создания студента заполните все поля и нажмите кнопку "Создать"</h3>
        <form>
            <label>Фамилия</label><input type="text">
            <label>Имя</label><input type="text">
            <label>Группа</label><input type="text">
            <label>Дата поступления</label><input type="text">
            <button>Создать</button>
        </form>
    </div>

</div>

</body>
</html>

