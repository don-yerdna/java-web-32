<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<body>
<script>
    document.title = "Student Mofdify"
</script>
<script>
    /* Локализация datepicker */
    $.datepicker.regional['ru'] = {
        closeText: 'Закрыть',
        prevText: 'Предыдущий',
        nextText: 'Следующий',
        currentText: 'Сегодня',
        monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
        dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
        dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
        dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        weekHeader: 'Не',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
    };
    $.datepicker.setDefaults($.datepicker.regional['ru']);
</script>
<script>
    $(function () {
        $("#datepicker").datepicker();
    });
</script>
<div id="page">
    <div id="title">
        <span>Система управления студентами и их успеваемостью</span>
    </div>
    <a id="logout" href="logout.html">Logout</a>
    <a id="home" href="/">На главную</a>
    <a id="back" href="javascript:history.back()">Назад</a>
    <div id="student-form">
        <h3>Для модификации, введите новые значения и нажмите кнопку "Применить"</h3>
        <form action="student-modify" method="post">
            <div class="student-label"><label>Фамилия</label></div>
            <div><input class="create-student-input" name="surname" type="text" value="${student.surname}"></div>
            <br>
            <div class="student-label"><label>Имя</label></div>
            <div><input class="create-student-input" name="name" type="text" value="${student.name}"></div>
            <br>
            <div class="student-label"><label>Группа</label></div>
            <div><input class="create-student-input" name="group" type="text" value="${student.group}"></div>
            <br>
            <div class="student-label"><label>Дата поступления</label></div>
            <div><input id="datepicker" name="date" type="text" value=<f:formatDate value="${student.date}"
                                                                                    pattern="dd/MM/yyyy"/>></div>
            <input name="id" type="hidden" value="${student.id}">

            <br>

            <input class="create-student-form-button" type="submit" value="Применить"/>
        </form>
    </div>

</div>

</body>
</html>

