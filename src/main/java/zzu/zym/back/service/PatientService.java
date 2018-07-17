package zzu.zym.back.service;

import zzu.zym.common.entity.Patient;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface PatientService {

    //查所有
    public List<Patient> queryAll();

    //查单个
    public Patient queryOne(String id);

    //添加
    public Result addPatient(Patient patient);

    //修改
    public Result modifyPatient(Patient patient);

    //删除
    public Result removePatient(String id);

    //登录用
    public Patient queryByName(String name);

    //查对应医生的病人
     public List<Patient> queryAllPatient(String name);

     public List<Patient> queryMany();
}
