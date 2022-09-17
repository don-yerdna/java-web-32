package db;

import entity.Discipline;

import java.util.List;

public interface IDBServices {
    List<Discipline>  getAllActiveDisciplines();

    void createDiscipline(String discipline);

    Discipline getDisciplineById(String id);

    void modifyDiscipline(String id, String newDiscipline);



}
