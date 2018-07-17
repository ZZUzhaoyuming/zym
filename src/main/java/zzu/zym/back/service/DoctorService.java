package zzu.zym.back.service;

import zzu.zym.common.entity.Doctor;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface DoctorService {

    //查所有
    public List<Doctor> queryAll();

    //查一个
    public Doctor queryOne(String id);

    //添加
    public Result addDoctor(Doctor doctor);

    //修改
    public Result modifyDoctor(Doctor doctor);

    //删除
    public Result removeDoctor(String id);

    //查所有前台
    public List<Doctor> queryAlll();

    //登录用
    public Doctor queryByName(String name);
}
