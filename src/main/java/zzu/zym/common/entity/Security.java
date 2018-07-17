package zzu.zym.common.entity;

public class Security {
    private String id;

    private String securityname;

    private String sex;

    private Integer age;

    private String phone;

    private String securityaddress;

    private String area;

    private String securitypicture;

    private String power;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSecurityname() {
        return securityname;
    }

    public void setSecurityname(String securityname) {
        this.securityname = securityname == null ? null : securityname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSecurityaddress() {
        return securityaddress;
    }

    public void setSecurityaddress(String securityaddress) {
        this.securityaddress = securityaddress == null ? null : securityaddress.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getSecuritypicture() {
        return securitypicture;
    }

    public void setSecuritypicture(String securitypicture) {
        this.securitypicture = securitypicture == null ? null : securitypicture.trim();
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power == null ? null : power.trim();
    }

    @Override
    public String toString() {
        return "Security{" +
                "id='" + id + '\'' +
                ", securityname='" + securityname + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", securityaddress='" + securityaddress + '\'' +
                ", area='" + area + '\'' +
                ", securitypicture='" + securitypicture + '\'' +
                ", power='" + power + '\'' +
                '}';
    }
}