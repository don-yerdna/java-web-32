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
  <div id="menu">
    <a href="/">На главную</a>
    <div>
      <button style="position: absolute;top: 80px;left: 225px;width: 270px;height: 23px;font-size: 10px;">Просмотреть успеваемость выбранных студентов</button>
      <button style="position: absolute;top: 115px;left: 225px;width: 270px;height: 23px;font-size: 11px;">Модифицировать выбранного студента...</button>
      <button style="position: absolute;top: 80px;left: 525px;width: 200px;height: 23px;font-size: 11px;">Создать студента...</button>
      <button style="position: absolute;top: 115px;left: 525px;width: 200px;height: 23px;font-size: 11px;">Удалить выбранных студентов</button>
    </div>
  </div>
  <div id="table">
    <h3 style="font-size: 17px">Список студентов</h3>
    <table >
      <tr>
        <th width="77px"></th>
        <th width="228px">Фамилия</th>
        <th width="250px">Имя</th>
        <th width="100px">Группа</th>
        <th width="100px">Дата поступления</th>
      </tr>
      <tr><td style="text-align: center"><input type="checkbox"></td><td>Сидоров</td><td>Сидор</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td style="text-align: center"><input type="checkbox"></td><td>Петров</td><td>Петр</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td style="text-align: center"><input type="checkbox"></td><td>Иванов</td><td>Иван</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td style="text-align: center"><input type="checkbox"></td><td>Макаревич</td><td>Андрей</td><td>КТ-21</td><td>1/09/2011</td></tr>
      <tr><td style="text-align: center"><input type="checkbox"></td><td>Бельгиец</td><td>Василий</td><td>КТ-21</td><td>1/09/2011</td></tr>

    </table>
  </div>
</div>

</body>
</html>
