package zzu.zym.common.dao;

import zzu.zym.common.entity.Bed;

import java.util.List;

public interface BedMapper {
    void deleteByPrimaryKey(String id);

    void insert(Bed record);

    void insertSelective(Bed record);

    Bed selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Bed record);

    void updateByPrimaryKey(Bed record);

    List<Bed> selectAll();

    List<Bed> selectAlll();

    List<Bed> selectAllll(String status);
}