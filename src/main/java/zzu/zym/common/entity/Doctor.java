package zzu.zym.common.entity;

public class Doctor {
    private String id;

    private String doctorname;

    private Integer age;

    private String department;

    private String position;

    private String doctoraddress;

    private String phone;

    private String personalprofile;

    private String doctorpicture;

    private String evaluation;

    private String status;

    private String power;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname == null ? null : doctorname.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getDoctoraddress() {
        return doctoraddress;
    }

    public void setDoctoraddress(String doctoraddress) {
        this.doctoraddress = doctoraddress == null ? null : doctoraddress.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getPersonalprofile() {
        return personalprofile;
    }

    public void setPersonalprofile(String personalprofile) {
        this.personalprofile = personalprofile == null ? null : personalprofile.trim();
    }

    public String getDoctorpicture() {
        return doctorpicture;
    }

    public void setDoctorpicture(String doctorpicture) {
        this.doctorpicture = doctorpicture == null ? null : doctorpicture.trim();
    }

    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation == null ? null : evaluation.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power == null ? null : power.trim();
    }

    @Override
    public String toString() {
        return "Doctor{" +
                "id='" + id + '\'' +
                ", doctorname='" + doctorname + '\'' +
                ", age=" + age +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                ", doctoraddress='" + doctoraddress + '\'' +
                ", phone='" + phone + '\'' +
                ", personalprofile='" + personalprofile + '\'' +
                ", doctorpicture='" + doctorpicture + '\'' +
                ", evaluation='" + evaluation + '\'' +
                ", status='" + status + '\'' +
                ", power='" + power + '\'' +
                '}';
    }
}