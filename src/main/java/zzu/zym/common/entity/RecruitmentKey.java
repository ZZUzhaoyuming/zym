package zzu.zym.common.entity;

public class RecruitmentKey {
    private String id;

    private String recruitmentname;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRecruitmentname() {
        return recruitmentname;
    }

    public void setRecruitmentname(String recruitmentname) {
        this.recruitmentname = recruitmentname == null ? null : recruitmentname.trim();
    }

    @Override
    public String toString() {
        return "RecruitmentKey{" +
                "id='" + id + '\'' +
                ", recruitmentname='" + recruitmentname + '\'' +
                '}';
    }
}