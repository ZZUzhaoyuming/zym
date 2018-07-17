package zzu.zym.back.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import zzu.zym.back.service.AttendanceService;
import zzu.zym.common.entity.Attendance;
import zzu.zym.common.entity.MedicalRecords;
import zzu.zym.common.entity.Result;
import zzu.zym.common.util.PoiUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    //查一个
   /* @RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){

        Attendance attendance = attendanceService.queryOne(id);;
        request.setAttribute("p",attendance);
        //跳转到修改页面
        return  "/zzu/attendance/updateAttendance";
    }*/
    //查一个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Attendance queryOne(String id){
        Attendance attendance = attendanceService.queryOne(id);;
        return attendance;
    }

    //查所有
    /*@RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<Attendance> attendanceList = attendanceService.queryAll();
        request.setAttribute("list",attendanceList);
        return  "/zzu/attendance/attendancelist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Attendance> queryAll(){
        List<Attendance> attendanceList = attendanceService.queryAll();
        return  attendanceList;
    }
    //添加
    /*@RequestMapping("/addAttendance")
    public String addAttendance(Attendance attendance){

        Result result = attendanceService.addAttendance(attendance);

        //跳转到查所有
        return "redirect:/attendance/queryAll";
    }*/
    //添加
    @RequestMapping("/addAttendance")
    @ResponseBody
    public Result addAttendance(Attendance attendance){
        Result result = attendanceService.addAttendance(attendance);
        return result;
    }

    //修改
    /*@RequestMapping("/modifyAttendance")
    public String modifyAttendance(Attendance attendance){

        Result result = attendanceService.modifyAttendance(attendance);

        //跳转到查所有
        return "redirect:/attendance/queryAll";
    }*/
    //修改
    @RequestMapping("/modifyAttendance")
    @ResponseBody
    public Result modifyAttendance(Attendance attendance){
        Result result = attendanceService.modifyAttendance(attendance);
        return result;
    }

    //删除
    /*@RequestMapping("/removeAttendance")
    public String removeAttendance(String id){

        Result result = attendanceService.removeAttendance(id);

        //跳转到查所有
        return "redirect:/attendance/queryAll";
    }*/
    //删除
    @RequestMapping("/removeAttendance")
    @ResponseBody
    public Result removeAttendance(String id){

        Result result = attendanceService.removeAttendance(id);

        return result;
    }

    //excel转数据库数据
    @RequestMapping("/importFile")
    @ResponseBody
    public Result importFile(@RequestParam MultipartFile mm){
        //拿数据
        String filename = mm.getOriginalFilename();
        System.out.println(filename+"00000000");
        Result result = new Result();
        try {
            String path = "G:\\his\\src\\main\\webapp\\zzu\\excel\\";
            FileInputStream fileInputStream = new FileInputStream(path+filename);
            System.out.println(path+filename);
            System.out.println(fileInputStream.toString());
            List<Attendance> list = PoiUtil.importExcel(Attendance.class, fileInputStream);
            System.out.println(list+"000");
            for (Attendance attendance: list) {
                attendanceService.addAttendance(attendance);
            }
            result.setMsg("导入成功");
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
