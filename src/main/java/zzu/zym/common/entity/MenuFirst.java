package zzu.zym.common.entity;

public class MenuFirst {
    private String id;

    private String menufirst;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMenufirst() {
        return menufirst;
    }

    public void setMenufirst(String menufirst) {
        this.menufirst = menufirst == null ? null : menufirst.trim();
    }
}