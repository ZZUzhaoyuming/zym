package zzu.zym.back.controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import zzu.zym.back.service.RecruitmentService;
import zzu.zym.common.entity.Recruitment;
import zzu.zym.common.entity.Result;
import zzu.zym.common.util.SmsDemo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/recruitment")
public class RecruitmentController {

    @Autowired
    private RecruitmentService recruitmentService;

    //查所有
   /* @RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<Recruitment> recruitmentList = recruitmentService.queryAll();

        request.setAttribute("list",recruitmentList);
        return "/zzu/recruitment/recruitmentlist";
    }*/
    //查所有
    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Recruitment> queryAll(){
        List<Recruitment> recruitmentList = recruitmentService.queryAll();

        return recruitmentList;
    }
    //查单个
    /*@RequestMapping("/queryOne")
    public String queryOne(String id,HttpServletRequest request){
        Recruitment recruitment = recruitmentService.queryOne(id);
        request.setAttribute("p",recruitment);
        //跳转修改页面
        return "/zzu/recruitment/updateRecruitment";
    }*/
    //查一个
    @RequestMapping("/queryOne")
    @ResponseBody
    public Recruitment queryOne(String id,HttpServletRequest request){
        Recruitment recruitment = recruitmentService.queryOne(id);
        return recruitment;
    }

    //添加
   /* @RequestMapping("/addRecruitment")
    public String addRecruitment(Recruitment recruitment, @RequestParam("mm") MultipartFile mm, HttpServletRequest request){

        try {
            //获取源文件名
            String fileName = mm.getOriginalFilename();
            //获取不带后缀的文件名
            String realname = fileName.substring(0,fileName.lastIndexOf("."));
            String str = FilenameUtils.getExtension(fileName);
            String id = UUID.randomUUID().toString().replace("-","");
            String newName = id +"."+str;
            String realpath = "G:\\his\\src\\main\\webapp\\zzu\\jianli";
            System.out.println(realpath+"路径");
            recruitment.setRecruitmenturl(realpath);
            //上传
            mm.transferTo(new File(realpath,newName));

            Result result = recruitmentService.addRecruitment(recruitment);
        } catch (IOException e) {
            e.printStackTrace();
        }

        //查所有
        return "redirect:/recruitment/queryAll";

    }*/

    //添加
    //上传文件
    @RequestMapping("/addRecruitment")
    public String addRecruitment(Recruitment recruitment, @RequestParam("mm") MultipartFile mm, HttpServletRequest request){
        Result result = new Result();
        try {
            //获取源文件名
            String fileName = mm.getOriginalFilename();
            //获取不带后缀的文件名
            String realname = fileName.substring(0,fileName.lastIndexOf("."));
            String str = FilenameUtils.getExtension(fileName);
            String id = UUID.randomUUID().toString().replace("-","");
            String newName = id +"."+str;
            String realpath = "G:\\his\\src\\main\\webapp\\zzu\\jianli";
            System.out.println(realpath+"路径");
            recruitment.setRecruitmenturl(fileName);
            //上传
            mm.transferTo(new File(realpath,newName));
            System.out.println(recruitment+"000000000000");
            result = recruitmentService.addRecruitment(recruitment);
        } catch (IOException e) {
            e.printStackTrace();
        }
        request.setAttribute("result",result);
        return "/zzu/tiaozhuan";
    }

    //修改
    /*@RequestMapping("/modifyRecruitment")
    public String modifyRecruitment(Recruitment recruitment){
        Result result = recruitmentService.modifyRecruitment(recruitment);

        //查所有
        return "redirect:/recruitment/queryAll";
    }*/
    //修改
    /*@RequestMapping("/modifyRecruitment")
    @ResponseBody
    public Result modifyRecruitment(Recruitment recruitment){
        Result result = recruitmentService.modifyRecruitment(recruitment);
        return result;
    }*/
    //审核
    @RequestMapping("/modifyRecruitment")
    @ResponseBody
    public Result modifyRecruitment(Recruitment record)throws Exception{
        //通过id取值
        Recruitment recruitment = recruitmentService.queryOne(record.getId());
        System.out.println(recruitment);
        System.out.println(recruitment.getSex()+"333");
        if(record.getSex().equals("是")){
            System.out.println("11111111111111111");
            //审核通过，发短信
            String msg = "简历已通过，请保持手机畅通";
            System.out.println("手机号："+recruitment.getRecruitmentphone());
            System.out.println("信息："+msg);
            System.out.println("名字："+recruitment.getRecruitmentname());
            SmsDemo.sendSms(recruitment.getRecruitmentphone(),msg,recruitment.getRecruitmentname());
            recruitment.setSex("是");
            Result result = recruitmentService.modefyByID(recruitment);
            return result;
        }else{
            System.out.println("222222222222");
            //审核不通过，发短信
            String msg = "简历未通过，抱歉";
            System.out.println("手机号："+recruitment.getRecruitmentphone());
            System.out.println("信息："+msg);
            System.out.println("名字："+recruitment.getRecruitmentname());
            SmsDemo.sendSms(recruitment.getRecruitmentphone(),msg,recruitment.getRecruitmentname());
            recruitment.setSex("否");
            Result result = recruitmentService.modefyByID(recruitment);
            return result;
        }
    }

    //删除
   /* @RequestMapping("/removeRecruitment")
    public String removeRecruitment(String id){
        Result result = recruitmentService.removeRecruitment(id);

        return "redirect:/recruitment/queryAll";
    }*/
    //删除
    @RequestMapping("/removeRecruitment")
    @ResponseBody
    public Result removeRecruitment(String id){
        Result result = recruitmentService.removeRecruitment(id);

        return result;
    }

    //在线预览
    @RequestMapping("/lookonline")
    @ResponseBody
    public Result lookonline(HttpServletResponse response, String id){
        System.out.println(id);
        Recruitment recruitment = recruitmentService.queryOne(id);
        Result result = new Result();
        try {
            /*File file = new File("G:\\his\\src\\main\\webapp\\back\\statics\\pic\\"+recruitment.getRecruitmenturl());*/
            File file = new File("G:\\his\\src\\main\\webapp\\back\\statics\\pic\\qwe.pdf");
            BufferedInputStream br = new BufferedInputStream(new FileInputStream(file));
            byte[] buf = new byte[1024];
            int len = 0;
            response.reset(); // 非常重要
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition",
                    "inline; filename=" + java.net.URLEncoder.encode(file.getName(), "UTF-8"));

            OutputStream out = response.getOutputStream();
            while ((len = br.read(buf)) != -1)
                out.write(buf, 0, len);
            br.close();
            out.close();
            result.setMsg("预览成功");
            result.setSuccess(true);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
}
