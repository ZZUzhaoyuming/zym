package zzu.zym.back.service;

import zzu.zym.common.entity.Result;
import zzu.zym.common.entity.Security;

import java.util.List;

public interface SecurityService {

    //查所有
    public List<Security> queryAll();

    //查单个
    public Security queryOne(String id);

    //添加
    public Result addSecurity(Security security);

    //修改
    public Result modifySecurity(Security security);

    //删除
    public Result removeSecurity(String id);
}
