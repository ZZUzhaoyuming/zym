package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.SecurityMapper;
import zzu.zym.common.entity.Result;
import zzu.zym.common.entity.Security;

import java.util.List;
import java.util.UUID;

@Service("securityService")
@Transactional
public class SecurityServiceImpl implements SecurityService {

    @Autowired
    private SecurityMapper securityMapper;

    @Override
    public List<Security> queryAll() {
        List<Security> securityList = securityMapper.selectAll();
        return securityList;
    }

    @Override
    public Security queryOne(String id) {
        Security security = securityMapper.selectByPrimaryKey(id);
        return security;
    }

    //添加
    @Override
    public Result addSecurity(Security security) {

        Result result = new Result();
        try {
            security.setId(UUID.randomUUID().toString());
            securityMapper.insert(security);
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
    public Result modifySecurity(Security security) {
        Result result = new Result();
        try {
            securityMapper.updateByPrimaryKey(security);
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
    public Result removeSecurity(String id) {
        Result result = new Result();
        try {
            securityMapper.deleteByPrimaryKey(id);
            result.setSuccess(true);
            result.setMsg("删除成功");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMsg("删除失败");
            e.printStackTrace();
        }
        return result;
    }
}
