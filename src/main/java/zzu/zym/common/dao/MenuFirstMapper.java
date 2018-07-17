package zzu.zym.common.dao;

import zzu.zym.common.entity.MenuFirst;

import java.util.List;

public interface MenuFirstMapper {
    void deleteByPrimaryKey(String id);

    void insert(MenuFirst record);

    void insertSelective(MenuFirst record);

    MenuFirst selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(MenuFirst record);

    void updateByPrimaryKey(MenuFirst record);

    List<MenuFirst> selectAll();
}