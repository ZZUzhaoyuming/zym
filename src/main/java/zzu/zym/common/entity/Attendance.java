package zzu.zym.common.entity;

public class Attendance {
    private String id;

    private String doctorid;

    private String attendance;

    private String noattendance;

    private String attendanceresults;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid == null ? null : doctorid.trim();
    }

    public String getAttendance() {
        return attendance;
    }

    public void setAttendance(String attendance) {
        this.attendance = attendance == null ? null : attendance.trim();
    }

    public String getNoattendance() {
        return noattendance;
    }

    public void setNoattendance(String noattendance) {
        this.noattendance = noattendance == null ? null : noattendance.trim();
    }

    public String getAttendanceresults() {
        return attendanceresults;
    }

    public void setAttendanceresults(String attendanceresults) {
        this.attendanceresults = attendanceresults == null ? null : attendanceresults.trim();
    }

    @Override
    public String toString() {
        return "Attendance{" +
                "id='" + id + '\'' +
                ", doctorid='" + doctorid + '\'' +
                ", attendance='" + attendance + '\'' +
                ", noattendance='" + noattendance + '\'' +
                ", attendanceresults='" + attendanceresults + '\'' +
                '}';
    }
}