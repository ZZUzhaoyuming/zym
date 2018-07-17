package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.DoctorMapper;
import zzu.zym.common.entity.Doctor;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("doctorService")
@Transactional
public class DoctorServiceImpl implements  DoctorService {

    @Autowired
    private DoctorMapper doctorMapper;

    @Override
    public List<Doctor> queryAll() {
        List<Doctor> doctorList = doctorMapper.selectAll();
        return doctorList;
    }

    @Override
    public Doctor queryOne(String id) {
        Doctor doctor = doctorMapper.selectByPrimaryKey(id);
        return doctor;
    }

    //添加
    @Override
    public Result addDoctor(Doctor doctor) {
        Result result = new Result();
        try {
            doctor.setId(UUID.randomUUID().toString());
            doctorMapper.insert(doctor);
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
    public Result modifyDoctor(Doctor doctor) {
        Result result = new Result();
        try {
            doctorMapper.updateByPrimaryKey(doctor);
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
    public Result removeDoctor(String id) {
        Result result = new Result();
        try {
            doctorMapper.deleteByPrimaryKey(id);
            result.setSuccess(true);
            result.setMsg("删除成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("删除失败");
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Doctor> queryAlll() {
        List<Doctor> doctorList = doctorMapper.selectAlll();
        return doctorList;
}

    @Override
    public Doctor queryByName(String name) {
        Doctor doctor = doctorMapper.selectByName(name);
        return doctor;
    }
}
