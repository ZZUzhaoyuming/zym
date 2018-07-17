package zzu.zym.back.controller;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import zzu.zym.back.service.MedicalRecordsService;
import zzu.zym.back.service.PatientService;
import zzu.zym.common.entity.MedicalRecords;
import zzu.zym.common.entity.Patient;
import zzu.zym.common.entity.Result;
import zzu.zym.common.util.PoiUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/medicalRecords")
public class MedicalRecordsController {

    @Autowired
    private MedicalRecordsService medicalRecordsService;

    @Autowired
    private PatientService patientService;

    //查所有
   /* @RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<MedicalRecords> medicalRecordsList = medicalRecordsService.queryAll();
        request.setAttribute("list",medicalRecordsList);
        return "/zzu/medicalrecords/medicalrecordslist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<MedicalRecords> queryAll(){
        List<MedicalRecords> medicalRecordsList = medicalRecordsService.queryAll();

        return medicalRecordsList;
    }

    //查单个
   /* @RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        MedicalRecords medicalRecords = medicalRecordsService.queryOne(id);
        request.setAttribute("p",medicalRecords);
        //跳转到修改页面
        return "/zzu/medicalrecords/updateMedicalrecords";
    }*/
    //查单个
    @RequestMapping("/queryOne")
    @ResponseBody
    public MedicalRecords queryOne(String id){
        System.out.println(id);
        MedicalRecords medicalRecords = medicalRecordsService.queryOne(id);
        System.out.println(medicalRecords+"数据");
        System.out.println(medicalRecords);
        return medicalRecords;
    }
    //查
    @RequestMapping("/queryOneOne")
    @ResponseBody
    public List<MedicalRecords> queryOneOne(String id){
        System.out.println(id);
        MedicalRecords medicalRecords = medicalRecordsService.queryOne(id);
        List<MedicalRecords> list = new ArrayList<MedicalRecords>();
        list.add(medicalRecords);
        return list;
    }

    //前台查单个
    @RequestMapping("/queryByID")
    public String queryByID(String id,HttpServletRequest request){
        MedicalRecords medicalRecords = medicalRecordsService.queryOne(id);
        request.setAttribute("p",medicalRecords);
        //跳转到修改页面
        return "/zzu/fpatient/medicalrecords";
    }


    //添加
   /* @RequestMapping("/addMedicalRecords")
    public String addMedicalRecords(MedicalRecords medicalRecords){
        Result result = medicalRecordsService.addMedicalRecords(medicalRecords);
        //跳转到查所有
        return "redirect:/medicalRecords/queryAll";
    }*/
    //添加
    @RequestMapping("/addMedicalRecords")
    @ResponseBody
    public Result addMedicalRecords(MedicalRecords medicalRecords){
        Result result = medicalRecordsService.addMedicalRecords(medicalRecords);
        //跳转到查所有
        return result;
    }

    //修改
    /*@RequestMapping("/modifyMedicalRecords")
    public String modifyMedicalRecords(MedicalRecords medicalRecords){
        Result result = medicalRecordsService.modifyMedicalRecords(medicalRecords);

        //查所有
        return "redirect:/medicalRecords/queryAll";
    }*/
    //修改
    @RequestMapping("/modifyMedicalRecords")
    @ResponseBody
    public Result modifyMedicalRecords(MedicalRecords medicalRecords){

        System.out.println(medicalRecords+"00000");
        Result result = medicalRecordsService.modifyMedicalRecords(medicalRecords);

        return result;
    }

    //删除
    /*@RequestMapping("/removeMedicalRecords")
    public String removeMedicalRecords(String id){

        Result result = medicalRecordsService.removeMedicalRecords(id);

        //查所有
        return "redirect:/medicalRecords/queryAll";
    }*/

    //删除
    @RequestMapping("/removeMedicalRecords")
    @ResponseBody
    public Result removeMedicalRecords(String id){
        Result result = medicalRecordsService.removeMedicalRecords(id);
        return result;
    }

    //查医生下面的病人的对应病例
    @RequestMapping("/queryOneById")
    public String queryOneById(String id,HttpServletRequest request){

        System.out.println("wsdfsdfgds==="+id);
        MedicalRecords medicalRecords = medicalRecordsService.queryOne(id);
        System.out.println(medicalRecords+"=11111111=");
        request.setAttribute("p",medicalRecords);
        //跳转到修改页面
        return "/zzu/fdoctor/medicalrecordslist";
    }

    //删除
    @RequestMapping("/removeMedicalRecordsByID")
    public String removeMedicalRecordsByID(String id){

        Result result = medicalRecordsService.removeMedicalRecords(id);

        //查所有
        return "redirect:/doctor/queryAllPatient";
    }

    //数据导出
    /*@RequestMapping("/export")
    public String export() throws IOException, IllegalAccessException, InstantiationException{

        //拿数据
        List<MedicalRecords> medicalRecordsList = medicalRecordsService.queryAll();
        String path = "G://his//src//main//webapp//zzu//excel//病历.xls";
        PoiUtil.exportExcel(MedicalRecords.class,medicalRecordsList,path);
        return "redirect:/medicalRecords/queryAll";
    }*/
    //数据导出
    @RequestMapping("/export")
    @ResponseBody
    public Result export(){
        //拿数据
        Result result = new Result();
        try {
            List<MedicalRecords> medicalRecordsList = medicalRecordsService.queryAll();
            String path = "G://his//src//main//webapp//zzu//excel//病历.xls";
            System.out.println(path);
            PoiUtil.exportExcel(MedicalRecords.class,medicalRecordsList,path);
            result.setMsg("导出成功");
            result.setSuccess(true);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
}
