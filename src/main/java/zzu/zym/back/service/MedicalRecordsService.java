package zzu.zym.back.service;

import zzu.zym.common.entity.MedicalRecords;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface MedicalRecordsService {

    //查所有
    public List<MedicalRecords> queryAll();

    //查单个
    public MedicalRecords queryOne(String id);

    //添加
    public Result addMedicalRecords(MedicalRecords medicalRecords);

    //修改
    public Result modifyMedicalRecords(MedicalRecords medicalRecords);

    //删除
    public Result removeMedicalRecords(String id);
}
