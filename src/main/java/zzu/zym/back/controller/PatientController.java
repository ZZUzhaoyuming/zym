package zzu.zym.back.controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import zzu.zym.back.service.BedService;
import zzu.zym.back.service.DoctorService;
import zzu.zym.back.service.PatientService;
import zzu.zym.common.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/patient")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @Autowired
    private BedService bedService;

    @Autowired
    private DoctorService doctorService;

    //查所有
    /*@RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){

        List<Patient> patientList = patientService.queryAll();

        request.setAttribute("list",patientList);
        return "/zzu/patient/patientlist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Patient> queryAll(){
        System.out.println("11111");
        List<Patient> patientList = patientService.queryAll();
        return patientList;
    }

    //查医生下的所有病人
    @RequestMapping("/queryAlll")
    @ResponseBody
    public List<Patient> queryAlll(String id){
        System.out.println(id);
        List<Patient> patients = patientService.queryAllPatient(id);
        System.out.println(patients);
        return patients;
    }

    //查单个
   /* @RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        Patient patient = patientService.queryOne(id);
        //跳转到admin_update修改页面
        request.setAttribute("p",patient);

        return "/zzu/patient/updatePatient";
    }*/
    //查单个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Patient queryOne(String id){
        Patient patient = patientService.queryOne(id);
        return patient;
    }

    //添加
    /*@RequestMapping("/addPatient")
    public String addPatient(Patient patient){


        Result result = patientService.addPatient(patient);

        return "redirect:/patient/queryAll";
    }*/
    //添加
    @RequestMapping("/addPatient")
    @ResponseBody
    public Result addPatient(Patient patient,@RequestParam MultipartFile pic){
        System.out.println(patient);
        System.out.println("111111111111111");
        Result result = new Result();
        try {
            //获取源文件名
            String fileName = pic.getOriginalFilename();
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
            pic.transferTo(new File(realpath,fileName));
            //添加图片
            patient.setPicture(fileName);
            result = patientService.addPatient(patient);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }

        return result;
    }
    //修改
    /*@RequestMapping("/modifyPatient")
    public String modifyPatient(Patient patient){
        Result result = patientService.modifyPatient(patient);
        //跳转到展示所有页面
        return "redirect:/patient/queryAll";
    }*/
    //修改
    @RequestMapping("/modifyPatient")
    @ResponseBody
    public Result modifyPatient(Patient patient,@RequestParam MultipartFile pic){
        Result result = new Result();
        try {
            //获取源文件名
            String fileName = pic.getOriginalFilename();
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
            pic.transferTo(new File(realpath,fileName));
            //添加图片
            patient.setPicture(fileName);
            result = patientService.modifyPatient(patient);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
        //跳转到展示所有页面
        return result;
    }

    //删除
   /* @RequestMapping("/removePatient")
    public String removePatient(String id){

        //删除之前先删除照片

        Result result = patientService.removePatient(id);
        //跳转到展示所有页面
        return "redirect:/patient/queryAll";
    }*/
   //删除
    @RequestMapping("/removePatient")
    @ResponseBody
    public Result removePatient(String id){

        Result result = patientService.removePatient(id);
        //跳转到展示所有页面
        return result;
    }

    //预定病床
    @RequestMapping("/buyBed")
    public String buyBed(HttpServletRequest request,String id){

        //查病床信息
        Bed bed = bedService.queryOne(id);

        HttpSession session = request.getSession();
        Patient patient = (Patient)session.getAttribute("patient");
        patient.setBedid(bed.getId());
        bed.setStatus("yes");

        Result result = patientService.modifyPatient(patient);
        Result result1 = bedService.updateBed(bed);

        return "redirect:/patient/fqueryOne";

    }

    //登录上去，个人信息
    @RequestMapping("/fqueryOne")
    public String fqueryOne(HttpServletRequest request){
        HttpSession session = request.getSession();
        Patient patient = (Patient)session.getAttribute("patient");

        request.setAttribute("patient",patient);

        return "/zzu/fpatient/patient";
    }


    //预定医生
    @RequestMapping("/buyDoctor")
    public String buyDoctor(HttpServletRequest request,String id){

        //查病床信息
        Doctor doctor = doctorService.queryOne(id);

        HttpSession session = request.getSession();
        Patient patient = (Patient)session.getAttribute("patient");

        patient.setDoctorid(doctor.getDoctorname());
        doctor.setStatus("yes");

        Result result = patientService.modifyPatient(patient);
        Result result1 = doctorService.modifyDoctor(doctor);

        return "redirect:/patient/fqueryOne";

    }

    //前台医生添加病历
    @RequestMapping("/queryOnePatient")
    public String queryOnePatient(String id,HttpServletRequest request){

        //存起来
        Patient patient = patientService.queryOne(id);

        request.setAttribute("patient",patient);

        return "/zzu/fdoctor/addMedicalrecords";
    }

    //柱状图
    /*@RequestMapping("/queryMany")
    public String queryMany(HttpServletRequest request){
        List<Patient> patients = patientService.queryMany();
        String name = "";
        String items = "";
        String score ="";
        for(Patient patient : patients){
            items = items + "'"+patient.getCc()+"',";
            score = score + "'"+patient.getCounts()+"',";
            name = patient.getAddress();
        }
        request.setAttribute("items",items);
        request.setAttribute("score",score);
        request.setAttribute("name",name);

        return "/zzu/fenxi";
    }*/
    //饼状图
    @RequestMapping("/queryMany")
    @ResponseBody
    public List<Active> queryMany(){
        List<Active> list = new ArrayList<Active>();
        List<Patient> patients = patientService.queryMany();
        for (Patient patient : patients) {
            Active active = new Active();
            active.setName(patient.getCc());
            active.setValue(Integer.valueOf(patient.getCounts()));
            list.add(active);
        }
        for (Active a :list) {
            System.out.println(a);
        }
        return list;
    }

}
