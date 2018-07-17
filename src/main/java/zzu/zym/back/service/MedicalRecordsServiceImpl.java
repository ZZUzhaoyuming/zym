package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.MedicalRecordsMapper;
import zzu.zym.common.entity.MedicalRecords;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("medicalRecordsService")
@Transactional
public class MedicalRecordsServiceImpl implements MedicalRecordsService {

    @Autowired
    private MedicalRecordsMapper medicalRecordsMapper;


    @Override
    public List<MedicalRecords> queryAll() {
        List<MedicalRecords> medicalRecordsList = medicalRecordsMapper.selectAll();

        return medicalRecordsList;
    }

    @Override
    public MedicalRecords queryOne(String id) {
        MedicalRecords medicalRecords = medicalRecordsMapper.selectByPrimaryKey(id);

        return medicalRecords;
    }

    //添加
    @Override
    public Result addMedicalRecords(MedicalRecords medicalRecords) {

        Result result = new Result();
        try {
            medicalRecords.setId(UUID.randomUUID().toString());
            medicalRecordsMapper.insert(medicalRecords);
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
    public Result modifyMedicalRecords(MedicalRecords medicalRecords) {

        Result result = new Result();
        try {
            medicalRecordsMapper.updateByPrimaryKey(medicalRecords);
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
    public Result removeMedicalRecords(String id) {

        Result result = new Result();
        try {
            medicalRecordsMapper.deleteByPrimaryKey(id);
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
