<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../resources/css/styles.css">

    <title>Disciplines' List</title>

</head>
<body>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <div id="menu-disciplines">
        <div>
            <form action="/discipline-create" method="get">
                <input class="menu-discipline-form-button" id="button-create-discipline" type="submit" value="Создать дисциплину..."/>
            </form>
        </div><br>
        <div>
            <form action="/discipline-modify" method="get" >
                <input class="menu-discipline-form-button" id="button-modify-discipline" type="submit" value="Модифицировать выбранную дисциплину..."/>
                <input style="display: none" type="text" id="discipline_check_text" name="id" value="">
            </form>
        </div><br>

        <div>
            <form action="/discipline-remove" method="get">
                <input class="menu-discipline-form-button" id="button-remove-discipline" type="submit" value="Удалить выбранную дисциплину"/>
                <input style="display: none" type="text" id="discipline_remove_text" name="id" value="">
            </form>
        </div>
    </div>
    <div id="table-disciplines">
        <h3>Список дисциплин</h3>
        <table>
            <tr>
                <th id="table-discipline-col1"></th>
                <th id="table-discipline-col2">Наименование дисциплины</th>
            </tr>
            <c:forEach items="${disciplines}" var="discipline">
                <tr>
                    <td class="checkbox"><input type="checkbox" name="id" value="${discipline.id}"></td>
                    <td>${discipline.discipline}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script>
    text_remove=document.getElementById("discipline_remove_text")
    text_modify=document.getElementById("discipline_check_text")
    inputs=document.getElementsByName("id")
    for(i in inputs){inputs[i].onclick=function(){
        if(this.checked){
            text_remove.value=this.value
            text_modify.value=this.value
        }else{
            text_remove.value=text_remove.value.replace(this.value, "")
            text_modify.value=text_modify.value.replace(this.value, "")
        }
    }}
</script>
</body>
</html>
