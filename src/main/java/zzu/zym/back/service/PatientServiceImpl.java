package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.PatientMapper;
import zzu.zym.common.entity.Patient;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("patientService")
@Transactional
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientMapper patientMapper;

    @Override
    public List<Patient> queryAll() {
        List<Patient> patientList = patientMapper.selectAll();

        return patientList;
    }

    @Override
    public Patient queryOne(String id) {
        Patient patient = patientMapper.selectByPrimaryKey(id);
        return patient;
    }

    //添加
    @Override
    public Result addPatient(Patient patient) {

        Result result = new Result();
        try {
            patient.setId(UUID.randomUUID().toString());
            patientMapper.insert(patient);
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
    public Result modifyPatient(Patient patient) {

        Result result = new Result();
        try {
            patientMapper.updateByPrimaryKey(patient);
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
    public Result removePatient(String id) {

        Result result = new Result();
        try {
            patientMapper.deleteByPrimaryKey(id);
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
    public Patient queryByName(String name) {
        Patient patient = patientMapper.selectByName(name);
        return patient;
    }

    @Override
    public List<Patient> queryAllPatient(String name) {

        List<Patient> patientList = patientMapper.selectAllPatient(name);

        return patientList;

    }

    @Override
    public List<Patient> queryMany() {
        List<Patient> patients = patientMapper.selectMany();
        return patients;
    }
}
