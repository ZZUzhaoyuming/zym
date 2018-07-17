package zzu.zym.common.dao;

import zzu.zym.common.entity.MenuSecond;

import java.util.List;

public interface MenuSecondMapper {
    void deleteByPrimaryKey(String id);

    void insert(MenuSecond record);

    void insertSelective(MenuSecond record);

    MenuSecond selectByPrimaryKey(String id);

    void updateByPrimaryKeySelective(MenuSecond record);

    void updateByPrimaryKey(MenuSecond record);

    List<MenuSecond> selectAll();
}