package entity;

public class DisciplineTerm {
    private int id;
    private String discipline;
    private boolean term = false;

    public DisciplineTerm() {
    }

    public DisciplineTerm(int id, String discipline, boolean term) {
        this.id = id;
        this.discipline = discipline;
        this.term = term;
    }

    public int getId() {
        return id;
    }

    public String getDiscipline() {
        return discipline;
    }

    public boolean isTerm() {
        return term;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDiscipline(String discipline) {
        this.discipline = discipline;
    }

    public void setTerm(boolean term) {
        this.term = term;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DisciplineTerm that = (DisciplineTerm) o;

        if (id != that.id) return false;
        if (term != that.term) return false;
        return discipline != null ? discipline.equals(that.discipline) : that.discipline == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (discipline != null ? discipline.hashCode() : 0);
        result = 31 * result + (term ? 1 : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DisciplineTerm{" +
                "id=" + id +
                ", discipline='" + discipline + '\'' +
                ", term=" + term +
                '}';
    }
}
