package zzu.zym.common.dao;

import zzu.zym.common.entity.Attendance;

import java.util.List;

public interface AttendanceMapper {
    void deleteByPrimaryKey(String id);

    void insert(Attendance record);

    void insertSelective(Attendance record);

    Attendance selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Attendance record);

    void updateByPrimaryKey(Attendance record);

    List<Attendance> selectAll();
}