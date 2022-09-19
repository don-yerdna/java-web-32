<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="../resources/css/styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
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
        <form action="student-create" method="post">
            <label>Фамилия</label><input name="surname" type="text">
            <label>Имя</label><input name="name" type="text">
            <label>Группа</label><input name="group" type="text">
            <label>Дата поступления</label><input id="datepicker" name="date" type="text">
            <input type="submit" value="Создать"/>
        </form>
    </div>

</div>

</body>
</html>

