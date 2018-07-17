package zzu.zym.back.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zzu.zym.back.service.DoctorService;
import zzu.zym.back.service.PatientService;
import zzu.zym.back.service.UserService;
import zzu.zym.common.entity.Doctor;
import zzu.zym.common.entity.Patient;
import zzu.zym.common.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    public UserService userService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private DoctorService doctorService;

    //登录
    @RequestMapping("/login")
    public String queryOne(String id,String password, HttpServletRequest request){
        HttpSession session = request.getSession();
        //清楚所有session

        //通过id查是哪种角色
        User user = userService.queryOne(id, password);
        //查管理员
        System.out.println(id+"==="+password);
        //查病人;
        Patient patient = patientService.queryByName(id);
        System.out.println(patient+"patient");
        //查医生
        Doctor doctor = doctorService.queryByName(id);
        System.out.println(doctor+"doctor");

        if(user != null){
            session.setAttribute("user",user);
            return "/back/main/main";
        }else if(patient != null){
            //判断
            if(patient.getPower().equals(password)){
                session.setAttribute("patient",patient);
                System.out.println("1111111111111");
                return "redirect:/patient/fqueryOne";
            }else{
                return "login/index";
            }
        }else if(doctor != null){
            if(doctor.getPhone().equals(password)){
                System.out.println();
                session.setAttribute("doctor",doctor);
                return "redirect:/doctor/queryDoctor";
            }else{
                return "login/index";
            }
        }

        return "login/index";
    }

}
