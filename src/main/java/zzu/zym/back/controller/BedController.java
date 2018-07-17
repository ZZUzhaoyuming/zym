package zzu.zym.back.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zzu.zym.back.service.BedService;
import zzu.zym.common.entity.Bed;
import zzu.zym.common.entity.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/bed")
public class BedController {

    @Autowired
    private BedService bedService;

    //查所有
    /*@RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<Bed> beds = bedService.queryAll();
        request.setAttribute("list",beds);
        return  "/zzu/bed/bedlist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Bed> queryAll(HttpServletRequest request){
        List<Bed> beds = bedService.queryAll();

        return beds;
    }

    //下拉框
    @RequestMapping("/queryAlll")
    @ResponseBody
    public List<Bed> queryAlll(){
        List<Bed> beds = bedService.queryAlll();
        return beds;
    }

    @RequestMapping("/queryAllll")
    @ResponseBody
    public List<Bed> queryAllll(String name){
        List<Bed> beds = bedService.queryAllll(name);
        return beds;
    }

    //查单个
    /*@RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        Bed bed = bedService.queryOne(id);
        request.setAttribute("p",bed);
        //跳转到修改页面
        return  "/zzu/bed/updateBed";

    }*/
    //查单个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Bed queryOne(String id){
        Bed bed = bedService.queryOne(id);
        return  bed;

    }

    //添加
    /*@RequestMapping("/addBed")
    public String addBed(Bed bed) {
        Result result = bedService.addBed(bed);
        return "redirect:/bed/queryAll";
    }*/
    //添加
    @RequestMapping("/addBed")
    public Result addBed(Bed bed) {
        Result result = bedService.addBed(bed);
        return result;
    }

    //修改
    /*@RequestMapping("/modifyBed")
    public String modifyBed(Bed bed) {
        Result result = bedService.updateBed(bed);

        //跳转到查所有
        return "redirect:/bed/queryAll";
    }*/
    //修改
    @RequestMapping("/modifyBed")
    @ResponseBody
    public Result modifyBed(Bed bed) {
        Result result = bedService.updateBed(bed);
        return result;
    }

    //删除
   /* @RequestMapping("/removeBed")
    public String removeBed(String id) {
        Result result = bedService.removeBed(id);

        //跳转到查所有
        return "redirect:/bed/queryAll";
    }*/
   //删除
    @RequestMapping("/removeBed")
    @ResponseBody
    public Result removeBed(String id) {
        Result result = bedService.removeBed(id);

        return result;
    }

}
