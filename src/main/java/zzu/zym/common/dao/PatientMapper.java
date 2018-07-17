package zzu.zym.common.dao;

import zzu.zym.common.entity.Patient;

import java.util.List;

public interface PatientMapper {
    void deleteByPrimaryKey(String id);

    void insert(Patient record);

    void insertSelective(Patient record);

    Patient selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Patient record);

    void updateByPrimaryKey(Patient record);

    List<Patient> selectAll();

    Patient selectByName(String name);

    List<Patient> selectAllPatient(String name);

    List<Patient> selectMany();


}