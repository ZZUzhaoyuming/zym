package zzu.zym.common.dao;

import zzu.zym.common.entity.Doctor;

import java.util.List;

public interface DoctorMapper {
    void deleteByPrimaryKey(String id);

    void insert(Doctor record);

    void insertSelective(Doctor record);

    Doctor selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Doctor record);

    void updateByPrimaryKey(Doctor record);

    List<Doctor> selectAll();

    List<Doctor> selectAlll();

    Doctor selectByName(String name);

}