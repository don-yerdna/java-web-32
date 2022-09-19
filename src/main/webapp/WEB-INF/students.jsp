<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../resources/css/styles.css">
  <title>Students List</title>

</head>
<body>
<div id="page">
  <div id="title">
    <span>Система управления студентами и их успеваемостью</span>
  </div>
  <a id="logout" href="logout.html">Logout</a>
  <a id="home" href="/">На главную</a>
  <div id="menu-student">
      <button id="button-view-student">Просмотреть успеваемость выбранных студентов</button>
      <button id="button-modify-student">Модифицировать выбранного студента...</button>
      <button id="button-create-student">Создать студента...</button>
      <button id="button-remove-student">Удалить выбранных студентов</button>
  </div>
  <div id="table-student">
    <h3>Список студентов</h3>
    <table >
      <tr>
        <th id="table-student-col1"></th>
        <th id="table-student-col2">Фамилия</th>
        <th id="table-student-col3">Имя</th>
        <th id="table-student-col4">Группа</th>
        <th id="table-student-col5">Дата поступления</th>
      </tr>
      <tr><td class="checkbox"><input type="checkbox"></td><td>Сидоров</td><td>Сидор</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td class="checkbox"><input type="checkbox"></td><td>Петров</td><td>Петр</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td class="checkbox"><input type="checkbox"></td><td>Иванов</td><td>Иван</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td class="checkbox"><input type="checkbox"></td><td>Макаревич</td><td>Андрей</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td class="checkbox"><input type="checkbox"></td><td>Бельгиец</td><td>Василий</td><td>КТ-21</td><td>1/09/2011</td></tr>

    </table>
  </div>
</div>

</body>
</html>
