package zzu.zym.common.entity;

public class Bed {
    private String id;

    private String bedarea;

    private String bedid;

    private String status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getBedarea() {
        return bedarea;
    }

    public void setBedarea(String bedarea) {
        this.bedarea = bedarea == null ? null : bedarea.trim();
    }

    public String getBedid() {
        return bedid;
    }

    public void setBedid(String bedid) {
        this.bedid = bedid == null ? null : bedid.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    @Override
    public String toString() {
        return "Bed{" +
                "id='" + id + '\'' +
                ", bedarea='" + bedarea + '\'' +
                ", bedid='" + bedid + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}