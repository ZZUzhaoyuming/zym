package zzu.zym.back.service;

import zzu.zym.common.entity.Bed;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface BedService {

    //查单个
    public Bed queryOne(String id);

    //查所有
    public List<Bed> queryAll();

    //添加
    public Result addBed(Bed bed);

    //修改
    public Result updateBed(Bed bed);

    //删除
    public Result removeBed(String id);

    //查所有 前台
    public List<Bed> queryAlll();

    public List<Bed> queryAllll(String name);
}
