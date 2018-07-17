package zzu.zym.back.service;

import zzu.zym.common.entity.Recruitment;
import zzu.zym.common.entity.Result;

import java.util.List;

public interface RecruitmentService {

    //查所有
    public List<Recruitment> queryAll();

    //查单个
    public Recruitment queryOne(String id);

    //添加
    public Result addRecruitment(Recruitment recruitment);

    //修改
    public Result modifyRecruitment(Recruitment recruitment);

    //删除
    public Result removeRecruitment(String id);

    //审核
    public Result modefyByID(Recruitment record);
}
