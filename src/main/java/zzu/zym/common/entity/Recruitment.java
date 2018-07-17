package zzu.zym.common.entity;

public class Recruitment extends RecruitmentKey {
    private Integer age;

    private String sex;

    private String recruitmentphone;

    private String recruitmenturl;

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getRecruitmentphone() {
        return recruitmentphone;
    }

    public void setRecruitmentphone(String recruitmentphone) {
        this.recruitmentphone = recruitmentphone == null ? null : recruitmentphone.trim();
    }

    public String getRecruitmenturl() {
        return recruitmenturl;
    }

    public void setRecruitmenturl(String recruitmenturl) {
        this.recruitmenturl = recruitmenturl == null ? null : recruitmenturl.trim();
    }

    @Override
    public String toString() {
        return "Recruitment{" +
                "age=" + age +
                ", sex='" + sex + '\'' +
                ", recruitmentphone='" + recruitmentphone + '\'' +
                ", recruitmenturl='" + recruitmenturl + '\'' +
                '}';
    }
}