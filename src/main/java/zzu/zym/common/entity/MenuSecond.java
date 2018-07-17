package zzu.zym.common.entity;

public class MenuSecond {
    private String id;

    private String menusecond;

    private String menufirstid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMenusecond() {
        return menusecond;
    }

    public void setMenusecond(String menusecond) {
        this.menusecond = menusecond == null ? null : menusecond.trim();
    }

    public String getMenufirstid() {
        return menufirstid;
    }

    public void setMenufirstid(String menufirstid) {
        this.menufirstid = menufirstid == null ? null : menufirstid.trim();
    }
}