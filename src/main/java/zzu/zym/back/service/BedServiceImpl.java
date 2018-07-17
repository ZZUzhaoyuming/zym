package zzu.zym.back.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.BedMapper;
import zzu.zym.common.entity.Bed;
import zzu.zym.common.entity.Result;

import java.util.List;
import java.util.UUID;

@Service("bedService")
@Transactional
public class BedServiceImpl  implements BedService {

    @Autowired
    private BedMapper bedMapper;
    //查单个
    @Override
    public Bed queryOne(String id) {
        Bed bed = bedMapper.selectByPrimaryKey(id);

        return bed;
    }

    //查所有
    @Override
    public List<Bed> queryAll() {
        List<Bed> beds = bedMapper.selectAll();
        return beds;
    }

    //添加
    @Override
    public Result addBed(Bed bed) {
        Result result = new Result();

        try {
            bed.setId(UUID.randomUUID().toString());
            bedMapper.insert(bed);
            result.setSuccess(true);
            result.setMsg("添加成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("添加失败");
            e.printStackTrace();
        }
        return result;
    }

    //修改
    @Override
    public Result updateBed(Bed bed) {
        Result result = new Result();
        try {
            bedMapper.updateByPrimaryKey(bed);
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
    public Result removeBed(String id) {
        Result result = new Result();

        try {
            bedMapper.deleteByPrimaryKey(id);
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
    public List<Bed> queryAlll() {
        List<Bed> beds = bedMapper.selectAlll();
        return beds;
    }

    @Override
    public List<Bed> queryAllll(String name) {
        List<Bed> beds = bedMapper.selectAllll(name);
        return beds;
    }


}
