package zzu.zym.common.entity;

public class Patient {
    private String id;

    private String patientname;

    private Integer age;

    private String sex;

    private String address;

    private String medicalrecordsid;

    private String doctorid;

    private String picture;

    private String professional;

    private String workarea;

    private String marriage;

    private String nativeplace;

    private String national;

    private String power;

    private String bedid;

    private String cc;

    private  String counts;


    public String getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "id='" + id + '\'' +
                ", patientname='" + patientname + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", medicalrecordsid='" + medicalrecordsid + '\'' +
                ", doctorid='" + doctorid + '\'' +
                ", picture='" + picture + '\'' +
                ", professional='" + professional + '\'' +
                ", workarea='" + workarea + '\'' +
                ", marriage='" + marriage + '\'' +
                ", nativeplace='" + nativeplace + '\'' +
                ", national='" + national + '\'' +
                ", power='" + power + '\'' +
                ", bedid='" + bedid + '\'' +
                ", cc='" + cc + '\'' +
                ", counts='" + counts + '\'' +
                '}';
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPatientname() {
        return patientname;
    }

    public void setPatientname(String patientname) {
        this.patientname = patientname;
    }

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
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMedicalrecordsid() {
        return medicalrecordsid;
    }

    public void setMedicalrecordsid(String medicalrecordsid) {
        this.medicalrecordsid = medicalrecordsid;
    }

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public String getWorkarea() {
        return workarea;
    }

    public void setWorkarea(String workarea) {
        this.workarea = workarea;
    }

    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace;
    }

    public String getNational() {
        return national;
    }

    public void setNational(String national) {
        this.national = national;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getBedid() {
        return bedid;
    }

    public void setBedid(String bedid) {
        this.bedid = bedid;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getCounts() {
        return counts;
    }

    public void setCounts(String counts) {
        this.counts = counts;
    }

    public Patient() {

    }

    public Patient(String id, String patientname, Integer age, String sex, String address, String medicalrecordsid, String doctorid, String picture, String professional, String workarea, String marriage, String nativeplace, String national, String power, String bedid, String cc, String counts) {

        this.id = id;
        this.patientname = patientname;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.medicalrecordsid = medicalrecordsid;
        this.doctorid = doctorid;
        this.picture = picture;
        this.professional = professional;
        this.workarea = workarea;
        this.marriage = marriage;
        this.nativeplace = nativeplace;
        this.national = national;
        this.power = power;
        this.bedid = bedid;
        this.cc = cc;
        this.counts = counts;
    }
}