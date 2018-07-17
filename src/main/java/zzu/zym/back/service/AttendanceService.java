package zzu.zym.back.service;

import zzu.zym.common.entity.Attendance;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface AttendanceService {

    //查一个
    public Attendance queryOne(String id);

    //查所有
    public List<Attendance> queryAll();

    //添加
    public Result addAttendance(Attendance attendance);

    //修改
    public Result modifyAttendance(Attendance attendance);

    //删除
    public Result removeAttendance(String id);
}
