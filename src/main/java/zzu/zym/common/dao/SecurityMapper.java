package zzu.zym.common.dao;


import zzu.zym.common.entity.Security;

import java.util.List;


public interface SecurityMapper {
    void deleteByPrimaryKey(String id);

    void insert(Security record);

    void insertSelective(Security record);

    Security selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(Security record);

    void updateByPrimaryKey(Security record);

    List<Security> selectAll();
}