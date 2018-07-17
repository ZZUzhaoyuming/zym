package zzu.zym.common.dao;

import zzu.zym.common.entity.Recruitment;
import zzu.zym.common.entity.RecruitmentKey;

import java.util.List;

public interface RecruitmentMapper {
    void deleteByPrimaryKey(String id);

    void insert(Recruitment record);

    void insertSelective(Recruitment record);

    Recruitment selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Recruitment record);

    void updateByPrimaryKey(Recruitment record);

    List<Recruitment> selectAll();

    void updateByID(Recruitment record);
}