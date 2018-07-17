package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.AttendanceMapper;
import zzu.zym.common.entity.Attendance;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("attendanceService")
@Transactional
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private AttendanceMapper attendanceMapper;


    @Override
    public Attendance queryOne(String id) {
        Attendance attendance = attendanceMapper.selectByPrimaryKey(id);
        return attendance;
    }

    @Override
    public List<Attendance> queryAll() {
        List<Attendance> attendanceList = attendanceMapper.selectAll();
        return attendanceList;
    }

    //添加
    @Override
    public Result addAttendance(Attendance attendance) {

        Result result = new Result();
        try {
            attendance.setId(UUID.randomUUID().toString());
            attendanceMapper.insert(attendance);
            result.setSuccess(true);
            result.setMsg("添加成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("添加失败");
            e.printStackTrace();
        }
        return result;
    }

    //修改
    @Override
    public Result modifyAttendance(Attendance attendance) {

        Result result = new Result();
        try {
            attendanceMapper.updateByPrimaryKey(attendance);
            result.setSuccess(true);
            result.setMsg("修改成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    //删除
    @Override
    public Result removeAttendance(String id) {

        Result result = new Result();

        try {
            attendanceMapper.deleteByPrimaryKey(id);
            result.setSuccess(true);
            result.setMsg("删除成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("删除失败");
            e.printStackTrace();
        }
        return result;
    }
}
