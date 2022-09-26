<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div >
            <form action="/student-progress" method="get">
                <input class="menu-student-form-button" id="button-view-student" type="submit" value="Просмотреть успеваемость выбранных студентов"/>
                <input style="display: none" type="text" id="student_progress_text" name="idStudent" value="">
            </form>
        </div>
        <div>
            <form action="/student-modify" method="get" >
                <input class="menu-student-form-button" id="button-modify-student" type="submit" value="Модифицировать выбранного студента..."/>
                <input style="display: none" type="text" id="student_check_text" name="id" value="">
            </form>
        </div>
        <div>
            <form action="/student-create" method="get">
                <input class="menu-student-form-button" id="button-create-student" type="submit" value="Создать студента..."/>
            </form>
        </div>
        <div>
            <form action="/student-remove" method="get">
                <input class="menu-student-form-button" id="button-remove-student" type="submit" value="Удалить выбранных студентов"/>
                <input style="display: none" type="text" id="student_remove_text" name="id" value="">
            </form>
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
<script>
    text_remove=document.getElementById("student_remove_text")
    text_modify=document.getElementById("student_check_text")
    text_progress=document.getElementById("student_progress_text")
    inputs=document.getElementsByName("id")
    for(i in inputs){inputs[i].onclick=function(){
        if(this.checked){
            if (text_remove.value===""){
                text_remove.value=text_remove.value+this.value
            } else {
                text_remove.value=text_remove.value+","+this.value
            }
            text_modify.value=this.value
            text_progress.value=this.value
        }else{
            if (text_remove.value===this.value){
                text_remove.value=text_remove.value.replace(this.value, "")
            } else {
                text_remove.value=text_remove.value.replace(","+this.value, "")
            }

            text_modify.value=text_modify.value.replace(this.value, "")
            text_progress.value=text_progress.value.replace(this.value, "")
        }
    }}
</script>
</body>
</html>
