package zzu.zym.back.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zzu.zym.back.service.SecurityService;
import zzu.zym.common.entity.Result;
import zzu.zym.common.entity.Security;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/security")
public class SecurityController {

    @Autowired
    private SecurityService securityService;

    //查所有
   /* @RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<Security> securityList = securityService.queryAll();
        request.setAttribute("list",securityList);
        return "/zzu/security/securitylist";
    }*/
   //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Security> queryAll(){
        List<Security> securityList = securityService.queryAll();
        return securityList;
    }

    //查单个
    /*@RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        Security security = securityService.queryOne(id);
        request.setAttribute("p",security);

        //修改页面
        return "/zzu/security/updateSecurity";
    }*/
    //查单个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Security queryOne(String id,HttpServletRequest request){
        Security security = securityService.queryOne(id);
        return security;
    }

    //添加
    /*@RequestMapping("/addSecurity")
    public String addSecurity(Security security){
        Result result = securityService.addSecurity(security);

        return "redirect:/security/queryAll";
    }*/
    //添加
    @RequestMapping("/addSecurity")
    @ResponseBody
    public Result addSecurity(Security security){
        Result result = securityService.addSecurity(security);
        return result;
    }

    //修改
   /* @RequestMapping("/modifySecurity")
    public String modifySecurity(Security security){
        Result result = securityService.modifySecurity(security);
        return "redirect:/security/queryAll";
    }*/
    //修改
    @RequestMapping("/modifySecurity")
    @ResponseBody
    public Result modifySecurity(Security security){
        Result result = securityService.modifySecurity(security);
        return result;
    }

    //删除
    /*@RequestMapping("/removeSecurity")
    public String removeSecurity(String id){
        Result result = securityService.removeSecurity(id);

        //展示所有
        return "redirect:/security/queryAll";
    }*/
    //删除
    @RequestMapping("/removeSecurity")
    @ResponseBody
    public Result removeSecurity(String id){
        Result result = securityService.removeSecurity(id);

        //展示所有
        return result;
    }
}
