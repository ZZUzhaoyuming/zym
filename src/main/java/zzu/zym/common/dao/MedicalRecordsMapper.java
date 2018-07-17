package zzu.zym.common.dao;

import zzu.zym.common.entity.MedicalRecords;

import java.util.List;

public interface MedicalRecordsMapper {
    void deleteByPrimaryKey(String id);

    void insert(MedicalRecords record);

    void insertSelective(MedicalRecords record);

    MedicalRecords selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(MedicalRecords record);

    void updateByPrimaryKey(MedicalRecords record);

    List<MedicalRecords> selectAll();
}