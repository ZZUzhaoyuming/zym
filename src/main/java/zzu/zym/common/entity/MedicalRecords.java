package zzu.zym.common.entity;

import java.util.Date;

public class MedicalRecords {
    private String id;

    private String medicalrecordsname;


    private Date generatetime;

    private String cc;

    private String hpi;

    private String pmh;

    private String ph;

    private String eh;

    private String fh;

    private String pc;

    private String ae;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMedicalrecordsname() {
        return medicalrecordsname;
    }

    public void setMedicalrecordsname(String medicalrecordsname) {
        this.medicalrecordsname = medicalrecordsname == null ? null : medicalrecordsname.trim();
    }

    public Date getGeneratetime() {
        return generatetime;
    }

    public void setGeneratetime(Date generatetime) {
        this.generatetime = generatetime;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc == null ? null : cc.trim();
    }

    public String getHpi() {
        return hpi;
    }

    public void setHpi(String hpi) {
        this.hpi = hpi == null ? null : hpi.trim();
    }

    public String getPmh() {
        return pmh;
    }

    public void setPmh(String pmh) {
        this.pmh = pmh == null ? null : pmh.trim();
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph == null ? null : ph.trim();
    }

    public String getEh() {
        return eh;
    }

    public void setEh(String eh) {
        this.eh = eh == null ? null : eh.trim();
    }

    public String getFh() {
        return fh;
    }

    public void setFh(String fh) {
        this.fh = fh == null ? null : fh.trim();
    }

    public String getPc() {
        return pc;
    }

    public void setPc(String pc) {
        this.pc = pc == null ? null : pc.trim();
    }

    public String getAe() {
        return ae;
    }

    public void setAe(String ae) {
        this.ae = ae == null ? null : ae.trim();
    }

    @Override
    public String toString() {
        return "MedicalRecords{" +
                "id='" + id + '\'' +
                ", medicalrecordsname='" + medicalrecordsname + '\'' +
                ", generatetime=" + generatetime +
                ", cc='" + cc + '\'' +
                ", hpi='" + hpi + '\'' +
                ", pmh='" + pmh + '\'' +
                ", ph='" + ph + '\'' +
                ", eh='" + eh + '\'' +
                ", fh='" + fh + '\'' +
                ", pc='" + pc + '\'' +
                ", ae='" + ae + '\'' +
                '}';
    }
}