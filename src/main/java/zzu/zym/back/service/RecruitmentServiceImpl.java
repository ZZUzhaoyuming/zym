package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.RecruitmentMapper;
import zzu.zym.common.entity.Recruitment;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("recruitmentService")
@Transactional
public class RecruitmentServiceImpl implements  RecruitmentService {

    @Autowired
    private RecruitmentMapper recruitmentMapper;

    @Override
    public List<Recruitment> queryAll() {

        List<Recruitment> recruitmentList = recruitmentMapper.selectAll();
        return recruitmentList;
    }

    @Override
    public Recruitment queryOne(String id) {
        Recruitment recruitment = recruitmentMapper.selectByPrimaryKey(id);
        return recruitment;
    }

    //添加
    @Override
    public Result addRecruitment(Recruitment recruitment) {
        Result result = new Result();
        try {
            recruitment.setId(UUID.randomUUID().toString());
            recruitmentMapper.insert(recruitment);
            result.setSuccess(true);
            result.setMsg("投递成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("投递失败");
            e.printStackTrace();
        }
        return result;
    }

    //修改
    @Override
    public Result modifyRecruitment(Recruitment recruitment) {
        Result result = new Result();

        try {
            recruitmentMapper.updateByPrimaryKey(recruitment);
            result.setSuccess(true);
            result.setMsg("修改成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    //删除
    @Override
    public Result removeRecruitment(String id) {

        Result result = new Result();

        try {
            recruitmentMapper.deleteByPrimaryKey(id);
            result.setSuccess(true);
            result.setMsg("删除成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("删除失败");
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Result modefyByID(Recruitment record) {
        Result result = new Result();

        try {
            recruitmentMapper.updateByID(record);
            result.setSuccess(true);
            result.setMsg("审核成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("审核失败");
            e.printStackTrace();
        }
        return result;
    }
}
