package com.dy.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.dy.model.Doctor;
import com.dy.model.Patient;
import com.dy.model.Profession;
import com.dy.model.Subject;
import com.dy.model.User;
import com.dy.service.CaseService;
import com.dy.service.DoctorService;
import com.dy.service.ManagerService;
import com.dy.service.OrderService;
import com.dy.service.PatientService;
import com.dy.service.ProfessionService;
import com.dy.service.SubjectService;
import com.dy.service.UserService;

@Controller  
@RequestMapping("/manager") 
public class ManagerController {

	
	@Resource  
    private UserService userService;  
    @Resource  
    private ManagerService managerService; 
    @Resource  
    private PatientService patientService; 
    @Resource  
    private DoctorService doctorService; 
    @Resource  
    private OrderService orderService; 
    @Resource  
    private SubjectService subjectService; 
    @Resource  
    private CaseService caseService; 
    @Resource  
    private ProfessionService professionService; 
    
    @RequestMapping("/managerMain")  
    public String doctorMain(HttpServletRequest request,Model model){
    	
    	return "main-manager";  
    } 
    
    @RequestMapping("/managerPatient")  
    public String managerPatient(HttpServletRequest request,Model model){
    	List<Patient>  patientlist = patientService.selectAllPatient();
    	model.addAttribute("patientlist", patientlist);
    	return "man-patient-manager";  
    } 
    
    @RequestMapping("/managerPatientDelete")  
    @ResponseBody
    public JSONObject managerPatientDelete(HttpServletRequest request,Model model){  
    	JSONObject json = new JSONObject();
    	Integer patientid=Integer.parseInt(request.getParameter("patientid"));
    	patientService.deleteByPrimaryKey(patientid);
    	json.put("msg","病人删除成功");
    	 return json;
    } 
    @RequestMapping("/managerDoctorDelete")  
    @ResponseBody
    public JSONObject managerDoctorDelete(HttpServletRequest request,Model model){  
    	JSONObject json = new JSONObject();
    	Integer doctorid=Integer.parseInt(request.getParameter("doctorid"));
    	doctorService.deleteByPrimaryKey(doctorid);
    	json.put("msg","医生删除成功");
    	return json;
    } 
    
    @RequestMapping("/managerDocotr")  
    public String managerDocotr(HttpServletRequest request,Model model){
    	List<Doctor> doctorlist = doctorService.searchAllDoctors();
    	List<Map> listmap = new ArrayList<Map>();
    	if(null != doctorlist){
    		for(Doctor doctor:doctorlist){
    			Map map= new HashMap();
    			map.put("doctorid", doctor.getDoctorid());
    			map.put("doctorname", doctor.getRealname());
    			map.put("sex", doctor.getSex());
    			map.put("brith", doctor.getBrith());
    			if(null!=doctor.getSubjectid()){
    				map.put("subject", subjectService.selectByPrimaryKey(doctor.getSubjectid()).getSubjectname());
    			}else{
    				map.put("subject", "");
    			}
    			if(null!=doctor.getProfessionid()){
    				map.put("profession", professionService.selectByPrimaryKey(doctor.getProfessionid()).getProfessionname());
    			}else{
    				map.put("profession", "");
    			}
    			map.put("goodat", doctor.getGoodat());
    			map.put("summary", doctor.getSummary());
    			listmap.add(map);
    		}
    	}
    	model.addAttribute("doctorlist", listmap);
    	return "man-doc-manager";  
    } 
    @RequestMapping("/managerDoctorUpdate")  
    public String managerDoctorUpdate(HttpServletRequest request,Model model){
    	Integer doctorid=Integer.parseInt(request.getParameter("doctorid"));
    	Doctor doctor = doctorService.getDoctorById(doctorid);
    	Map map= new HashMap();
    	map.put("doctorid", doctor.getDoctorid());
    	map.put("realname", doctor.getRealname());
    	map.put("sex", doctor.getSex());
    	map.put("brith", doctor.getBrith());
    	map.put("subjectid", doctor.getSubjectid());
    	if(null!=doctor.getSubjectid()){
    		map.put("subjectname", subjectService.selectByPrimaryKey(doctor.getSubjectid()).getSubjectname());
    	}else{
    		map.put("subjectname", "");
    	}
    	map.put("professionid", doctor.getProfessionid());
    	if(null!=doctor.getProfessionid()){
    		map.put("professionname", professionService.selectByPrimaryKey(doctor.getProfessionid()).getProfessionname());
    	}else{
    		map.put("professionname", "");
    	}
    	map.put("goodat", doctor.getGoodat());
    	map.put("summary", doctor.getSummary());
    	model.addAttribute("doctor", map);
    	List<Subject> subjectlist = subjectService.selectAllSubject();
    	model.addAttribute("subjectlist", subjectlist);
    	List<Profession> professionlist = professionService.selectAllProfessions();
    	model.addAttribute("professionlist", professionlist);
    	return "man-doc-manager-update";  
    } 
    @RequestMapping("/managerDoctorUpdateSubmit")  
    @ResponseBody
    public JSONObject managerDoctorUpdateSubmit(HttpServletRequest request,Model model){  
    	JSONObject json = new JSONObject();
    	String sex = request.getParameter("sex");
    	String realname = request.getParameter("realname");
    	String brith = request.getParameter("brith");
    	Integer doctorid = Integer.parseInt(request.getParameter("doctorid"));
    	Integer subjectid = Integer.parseInt(request.getParameter("subjectid"));
    	Integer professionid = Integer.parseInt(request.getParameter("professionid"));
    	String goodat = request.getParameter("goodat");
    	String summary = request.getParameter("summary");
    	Doctor doctor = new Doctor();
    	doctor.setDoctorid(doctorid);
    	doctor.setSex(sex);
    	doctor.setRealname(realname);
    	doctor.setBrith(brith);
    	doctor.setSubjectid(subjectid);
    	doctor.setProfessionid(professionid);
    	doctor.setGoodat(goodat);
    	doctor.setSummary(summary);
    	doctorService.updateByPrimaryKeySelective(doctor);
    	json.put("msg","修改成功");
    	return json;
    } 
    @RequestMapping("/managerDocotrAdd")  
    public String managerDocotrAdd(HttpServletRequest request,Model model){
    	List<Subject> subjectlist = subjectService.selectAllSubject();
    	model.addAttribute("subjectlist", subjectlist);
    	List<Profession> professionlist = professionService.selectAllProfessions();
    	model.addAttribute("professionlist", professionlist);
    	return "man-doc-add";  
    } 
    @RequestMapping("/managerDoctorAddSubmit")  
    @ResponseBody
    public JSONObject managerDoctorAddSubmit(HttpServletRequest request,Model model){  
    	JSONObject json = new JSONObject();
    	String sex = request.getParameter("sex");
    	String username = request.getParameter("username");
    	String realname = request.getParameter("realname");
    	String brith = request.getParameter("brith");
    	Integer subjectid = Integer.parseInt(request.getParameter("subjectid"));
    	Integer professionid = Integer.parseInt(request.getParameter("professionid"));
    	String goodat = request.getParameter("goodat");
    	String summary = request.getParameter("summary");
    	Doctor doctor = new Doctor();
    	doctor.setSex(sex);
    	doctor.setRealname(realname);
    	doctor.setBrith(brith);
    	doctor.setSubjectid(subjectid);
    	doctor.setProfessionid(professionid);
    	doctor.setGoodat(goodat);
    	doctor.setSummary(summary);
    	User user = new User();
    	user.setUsername(username);
    	user.setPassword("123123");
    	userService.insertUser(user);
    	doctor.setUserid(user.getUserid());
    	doctorService.insertDoctor(doctor);
    	json.put("msg","医生新增成功,医生登录默认的用户密码为：【123123】。");
    	return json;
    }  
}
