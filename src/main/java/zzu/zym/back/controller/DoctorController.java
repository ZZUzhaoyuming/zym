package zzu.zym.back.controller;

import com.opensymphony.xwork2.interceptor.ParameterRemoverInterceptor;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import zzu.zym.back.service.DoctorService;
import zzu.zym.back.service.MedicalRecordsService;
import zzu.zym.back.service.PatientService;
import zzu.zym.common.entity.Doctor;
import zzu.zym.common.entity.MedicalRecords;
import zzu.zym.common.entity.Patient;
import zzu.zym.common.entity.Result;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/doctor")
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private MedicalRecordsService medicalRecordsService;

    //查所有
    /*@RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){

        List<Doctor> patientList = doctorService.queryAll();
        request.setAttribute("list",patientList);
        //查所有
        return "/zzu/doctor/doctorlist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Doctor> queryAll(HttpServletRequest request){

        List<Doctor> patientList = doctorService.queryAll();
        return patientList;
    }

    //查所有（下拉框）
    @RequestMapping("/queryAlll")
    @ResponseBody
    public List<Doctor> queryAlll(){
        List<Doctor> patientList = doctorService.queryAlll();
        System.out.println(patientList+"1111");
        return patientList;
    }



    //查单个
   /* @RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        Doctor doctor = doctorService.queryOne(id);
        //跳转到admin_update修改页面
        request.setAttribute("p",doctor);
        return "/zzu/doctor/updateDoctor";
    }*/
    //查单个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Doctor queryOne(String id){
        Doctor doctor = doctorService.queryOne(id);
        return doctor;
    }

    //添加
   /* @RequestMapping("/addDoctor")
    public String  addPatient(Doctor doctor){

        Result result = doctorService.addDoctor(doctor);

        return "redirect:/doctor/queryAll";
    }*/
    //添加
    @RequestMapping("/addDoctor")
    @ResponseBody
    public Result addPatient(Doctor doctor){
        Result result = doctorService.addDoctor(doctor);
        return result;
    }
    //修改
    /*@RequestMapping("/modifyDoctor")
    public String modifyDoctor(Doctor doctor){
        Result result = doctorService.modifyDoctor(doctor);
        //跳转到展示所有页面
        return "redirect:/doctor/queryAll";
    }*/
    //修改
    @RequestMapping("/modifyDoctor")
    @ResponseBody
    public Result modifyDoctor(Doctor doctor){
        System.out.println(doctor+"====");
        Result result = doctorService.modifyDoctor(doctor);
        System.out.println(result+"++++++");
        return result;
    }

    //删除
    /*@RequestMapping("/removeDoctor")
    public String removeDoctor(String id){

        Result result = doctorService.removeDoctor(id);
        //跳转到展示所有页面
        return "redirect:/doctor/queryAll";
    }*/
    //删除
    @RequestMapping("/removeDoctor")
    @ResponseBody
    public Result removeDoctor(String id){
        Result result = doctorService.removeDoctor(id);
        return result;
    }

    //登录上去。医生个人信息
    @RequestMapping("/queryDoctor")
    public String queryDoctor(HttpServletRequest request) {

        HttpSession session = request.getSession();
        Doctor doctor = (Doctor) session.getAttribute("doctor");

        request.setAttribute("doctor", doctor);
        return "/zzu/fdoctor/doctor";
    }

    //添加病人
    @RequestMapping("/addPatient")
    public String addPatient(HttpServletRequest request, Patient patient,@RequestParam MultipartFile mm)throws Exception{

        HttpSession session = request.getSession();
        Doctor doctor = (Doctor) session.getAttribute("doctor");
        //添加
        //获取源文件名
        String fileName = mm.getOriginalFilename();
        //获取不带后缀的文件名
        String realname = fileName.substring(0,fileName.lastIndexOf("."));
        //新文件名,同时设置新文件名为图片id
        String str = FilenameUtils.getExtension(fileName);
        String newName = realname +"."+str;
        //路径
        String realpath = "G:\\his\\src\\main\\webapp\\back\\statics\\pic";
        System.out.println(realpath);
        //上传
        System.out.println(realpath+"/"+fileName);
        mm.transferTo(new File(realpath,fileName));
        //添加图片
        patient.setPicture(fileName);
        patientService.addPatient(patient);

        patient.setDoctorid(doctor.getDoctorname());
        patient.setMedicalrecordsid("暂无");
        patient.setPower("1");
        patientService.addPatient(patient);

        return "redirect:/doctor/queryDoctor";
    }

    //添加病历
    @RequestMapping("/addMedicalRecords")
    public String addMedicalRecords(HttpServletRequest request, MedicalRecords medicalRecords,String id){

        //添加病历
        medicalRecordsService.addMedicalRecords(medicalRecords);
        //修改病人病历字段
        Patient patient = patientService.queryOne(id);
        patient.setMedicalrecordsid(medicalRecords.getId());
        patientService.modifyPatient(patient);

        return "redirect:/doctor/queryDoctor";
    }

    //查当前医生对应的病人信息
    @RequestMapping("/queryAllPatient")
    public String queryAllPatient(HttpServletRequest request,String name){

        System.out.println(name+"nameanmenamenamenamename");
        List<Patient> patients = patientService.queryAllPatient(name);

        request.setAttribute("patients",patients);

        return "/zzu/fdoctor/patientlist";
    }
}
