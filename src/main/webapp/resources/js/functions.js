function createStudent() {
    document.getElementById('createStudentForm').submit();
}

function removeStudents() {
    var checkedCheckboxs = document.querySelectorAll('input[name=id]:checked');
    if (checkedCheckboxs.length == 0) {
        alert("Выберите минимум одного студента...")
        return
    }

    var ids = ""
    for (var i = 0; i < checkedCheckboxs.length; i++) {
        ids = ids + checkedCheckboxs[i].value + " "
    }

    document.getElementById("student_remove_text").value = ids;
    document.getElementById('deleteStudentForm').submit();

}

function modifyStudent() {
    var checkedCheckboxs = document.querySelectorAll('input[name=id]:checked');
    if (checkedCheckboxs.length == 0) {
        alert("Выберите одного студента...")
        return
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента...")
        return
    }

    document.getElementById("student_check_text").value = checkedCheckboxs[0].value;
    document.getElementById('modifyStudentForm').submit();

}

function progressStudent() {
    var checkedCheckboxs = document.querySelectorAll('input[name=id]:checked');
    if (checkedCheckboxs.length == 0) {
        alert("Выберите одного студента...")
        return
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента...")
        return
    }

    document.getElementById("student_progress_text").value = checkedCheckboxs[0].value;
    document.getElementById('progressStudentForm').submit();

}

function createDiscipline() {
    document.getElementById('createDisciplineForm').submit();
}

function modifyDiscipline() {
    var checkedCheckboxs = document.querySelectorAll('input[name=id]:checked');
    if (checkedCheckboxs.length == 0) {
        alert("Выберите одну дисциплину...")
        return
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одну дисциплину...")
        return
    }

    document.getElementById("discipline_check_text").value = checkedCheckboxs[0].value;
    document.getElementById('modifyDisciplineForm').submit();

}

function removeDiscipline() {
    var checkedCheckboxs = document.querySelectorAll('input[name=id]:checked');
    if (checkedCheckboxs.length == 0) {
        alert("Выберите одну дисциплину...")
        return
    }

    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одну дисциплину...")
        return
    }

    document.getElementById("discipline_remove_text").value = checkedCheckboxs[0].value;
    document.getElementById('removeDisciplineForm').submit();

}
