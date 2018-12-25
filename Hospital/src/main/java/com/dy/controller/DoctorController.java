package com.dy.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.dy.model.Advice;
import com.dy.model.Case;
import com.dy.model.Doctor;
import com.dy.model.Fee;
import com.dy.model.Medicinal;
import com.dy.model.Order;
import com.dy.model.Patient;
import com.dy.service.AdviceService;
import com.dy.service.CaseService;
import com.dy.service.DoctorService;
import com.dy.service.FeeService;
import com.dy.service.ManagerService;
import com.dy.service.MedicinalService;
import com.dy.service.OrderService;
import com.dy.service.PatientService;
import com.dy.service.SubjectService;
import com.dy.service.UserService;
import com.dy.util.DataUtils;


@Controller  
@RequestMapping("/doctor")  
public class DoctorController {
	
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
	    private AdviceService adviceService; 
	    @Resource  
	    private FeeService feeService; 
	    @Resource  
	    private MedicinalService medicinalService; 
	    
	    @RequestMapping("/doctorMain")  
	    public String doctorMain(HttpServletRequest request,Model model){
	    	return "main-doc";  
	    }  
	    
	    @RequestMapping("/doctorOrderManager")  
	    public String doctorOrderManager(HttpServletRequest request,Model model){
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Order ord = new Order();
	    	ord.setDoctorid(doctor.getDoctorid());
	    	List<Order> orderlist = orderService.searchOrder(ord);
	    	List<Map> ordermap = new ArrayList<Map>();
	    	if(null!=orderlist){
	    		for(Order od:orderlist){
		    		Map map = new HashMap();
		    		map.put("orderid", od.getOrderid());
		    		map.put("patientid", od.getPatientid());
		    		map.put("patientname", patientService.selectByPrimaryKey(od.getPatientid()).getName());
		    		map.put("orderdate", od.getOrderdate());
		    		map.put("orderstate", od.getOrderstate());
		    		ordermap.add(map);
		    	}
	    	}
	    	model.addAttribute("orderlist", ordermap);
	    	return "doc-order-manager";  
	    }
	    @RequestMapping("/doctorAcceptOrder")  
	    @ResponseBody
	    public JSONObject doctorAcceptOrder(HttpServletRequest request,Model model){  
	    	JSONObject json = new JSONObject();
	    	Integer orderid=Integer.parseInt(request.getParameter("orderid"));
	    	Order ord = new Order();
	    	ord.setOrderid(orderid);
	    	ord.setOrderstate("已接受 ");
	    	orderService.updateOrder(ord);
	    	json.put("msg","接受成功");
	    	 return json;
	    } 
	    @RequestMapping("/doctorPatientQuery")  
	    public String doctorPationQuery(HttpServletRequest request,Model model){
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Order ord = new Order();
	    	ord.setDoctorid(doctor.getDoctorid());
	    	List<Order> orderlist = orderService.searchOrder(ord);
	    	List<Patient> patientlist = new ArrayList<Patient>();
	    	if(null!=orderlist){
	    		for(Order od:orderlist){
		    		Patient patient=patientService.getPatientById(od.getPatientid());
		    		patientlist.add(patient);
		    	}
	    	}
	    	model.addAttribute("patientlist", patientlist);
	    	return "doc-patient-query";  
	    }  
	    @RequestMapping("/doctorCaseManager")  
	    public String doctorCaseManager(HttpServletRequest request,Model model){
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Case cc= new Case();
	    	cc.setDoctorid(doctor.getDoctorid());
	    	List<Case> cases=caseService.selectCaseList(cc);
	    	List<Map> casemap = new ArrayList<Map>();
	    	if(null!=cases){
	    		for(Case ca:cases){
	    			Map map = new HashMap();
	    			map.put("caseid", ca.getCaseid());
	    			map.put("orderid", ca.getOrderid());
	    			map.put("adviceid", ca.getAdivceid());
	    			map.put("patientid", ca.getPatientid());
	    			map.put("isfirst", ca.getIsfirst());
	    			map.put("visitdate", ca.getVisitdate());
	    			map.put("diagnosis", ca.getDiagnosis());
	    			map.put("treat", ca.getTreat());
	    			map.put("patientname", patientService.selectByPrimaryKey(ca.getPatientid()).getName());
	    			casemap.add(map);
		    	}
	    	}
	    	model.addAttribute("casemap", casemap);
	    	return "doc-case-manager";  
	    }  
	    @RequestMapping("/doctorAdviceManager")  
	    public String doctorAdviceManager(HttpServletRequest request,Model model){
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Advice advice = new Advice();
	    	advice.setDoctorid(doctor.getDoctorid());
	    	List<Advice> advicelist= adviceService.selectAdvicesList(advice);
	    	List<Map> listmap = new ArrayList<Map>();
	    	if(null != advicelist){
	    		for(Advice adv:advicelist){
	    			Map map = new HashMap();
	    			map.put("adviceid", adv.getAdviceid());
	    			map.put("patientid", adv.getPatientid());
	    			map.put("patientname", patientService.selectByPrimaryKey(adv.getPatientid()).getName());
	    			map.put("advicecontent", adv.getAdvicecontent());
	    			map.put("advicedate", adv.getAdvicedate());
	    			map.put("adviceanswer", adv.getAdviceanswer());
	    			map.put("adviceanswerdate", adv.getAdviceanswerdate());
	    			map.put("isanswer", adv.getIsanswer());
	    			listmap.add(map);
	    		}
	    	}
	    	model.addAttribute("advicelist", listmap);
	    	return "doc-advice-manager";  
	    }  
	    @RequestMapping("/doctorAdviceAnswer")  
	    public String doctorAdviceAnswer(HttpServletRequest request,Model model){
	    	Integer adviceid = Integer.parseInt(request.getParameter("adviceid"));
	    	Advice advice = adviceService.selectByPrimaryKey(adviceid);
	    	Map map = new HashMap();
	    	map.put("adviceid", advice.getAdviceid());
	    	map.put("patientid", advice.getPatientid());
	    	map.put("patientname", patientService.selectByPrimaryKey(advice.getPatientid()).getName());
	    	map.put("advicecontent", advice.getAdvicecontent());
	    	map.put("advicedate", advice.getAdvicedate());
	    	model.addAttribute("advice", map);
	    	return "doc-advice-manager-input";  
	    }  
	    @RequestMapping("/doctorAdviceAnswerSubmit")  
	    @ResponseBody
	    public JSONObject doctorAdviceAnswerSubmit(HttpServletRequest request,Model model){  
	    	JSONObject json = new JSONObject();
	    	Integer adviceid = Integer.parseInt(request.getParameter("adviceid"));
	    	String adviceanswer = request.getParameter("adviceanswer");
	    	String advicecontent = request.getParameter("advicecontent");
	    	Advice advice = new Advice();
	    	advice.setAdviceid(adviceid);
	    	advice.setAdvicecontent(advicecontent);
	    	advice.setAdviceanswer(adviceanswer);
	    	advice.setAdviceanswerdate(DataUtils.formatStringDate(new Date()));
	    	advice.setIsanswer("Y");
	    	adviceService.updateByPrimaryKeySelective(advice);
	    	json.put("msg","回复成功");
	    	 return json;
	    } 
	    @RequestMapping("/doctorCaseAdd")  
	    public String doctorCaseAdd(HttpServletRequest request,Model model){
	    	List<Patient> patientlist = patientService.selectAllPatient();
	    	model.addAttribute("patientlist", patientlist);
	    	return "doc-case-manager-add";  
	    }  
	    @RequestMapping("/cassAddMedicinalsInput")  
	    public String cassAddMedicinalsInput(HttpServletRequest request,Model model){
	    	Integer caseid = Integer.parseInt(request.getParameter("caseaddid"));
	    	Case cass = caseService.selectByPrimaryKey(caseid);
	    	Map map  = new HashMap();
	    	map.put("caseid", cass.getCaseid());
	    	map.put("patientid", cass.getPatientid());
	    	map.put("patientname", patientService.selectByPrimaryKey(cass.getPatientid()).getName());
	    	map.put("diagnosis", cass.getDiagnosis());
	    	map.put("treat", cass.getTreat());
	    	List<Medicinal> medicinallist = medicinalService.selectAllMedicinal();
	    	Fee fee = new Fee();
	    	fee.setCaseid(caseid);
	    	List<Fee> feelist = feeService.selectFeeList(fee);
	    	List<Map> listmap = new ArrayList<Map>();
	    	if(null!=feelist){
	    		for(Fee fe:feelist){
	    			Map mp=new HashMap();
	    			mp.put("caseid", fe.getCaseid());
	    			mp.put("feecategory", fe.getFeecategory());
	    			mp.put("medicinalid", fe.getMedicinalid());
    				mp.put("medicinalname", medicinalService.selectByPrimaryKey(fe.getMedicinalid()).getMedicinalname());
    				mp.put("feemedicinalnum", fe.getMedicinalnum());
	    			mp.put("medicinalprice", medicinalService.selectByPrimaryKey(fe.getMedicinalid()).getMedicinalprice());
	    			mp.put("feeid", fe.getFeeid());
	    			listmap.add(mp);
	    		}
	    	}
	    	model.addAttribute("feelist", listmap);
	    	model.addAttribute("patient", map);
	    	model.addAttribute("medicinallist", medicinallist);
	    	return "doc-case-medicinalsadd-input";  
	    }  
	    @RequestMapping("/doctorCaseAddInput")  
	    public String doctorCaseAddInput(HttpServletRequest request,Model model){
	    	String patientid=request.getParameter("patientid");
	    	model.addAttribute("patientid", patientid);
	    	return "doc-case-manager-input";  
	    }  
	    @RequestMapping("/doctorCaseAddSubmit")  
	    @ResponseBody
	    public JSONObject doctorCaseAddSubmit(HttpServletRequest request,Model model){
	    	JSONObject json = new JSONObject();
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Integer patientid=Integer.parseInt(request.getParameter("formpatientid"));
	    	Integer isfirst=Integer.parseInt(request.getParameter("formisfirst"));
	    	String diagnosis=request.getParameter("formdiagnosis");
	    	String treat=request.getParameter("formtreat");
	    	Case cass = new Case();
	    	cass.setPatientid(patientid);
	    	cass.setDoctorid(doctor.getDoctorid());
	    	cass.setIsfirst(isfirst);
	    	cass.setDiagnosis(diagnosis);
	    	cass.setTreat(treat);
	    	cass.setSubjectid(doctor.getSubjectid());
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    	cass.setVisitdate(sdf.format(new Date()));
	    	caseService.insert(cass);
	    	json.put("msg", "新增成功");
	    	return json; 
	    }  
	    @RequestMapping("/doctorCaseUpdate")  
	    public String doctorCaseUpdate(HttpServletRequest request,Model model){
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Doctor doctor = doctorService.selectByuserid(currUserid);
	    	Integer caseid=Integer.parseInt(request.getParameter("caseid"));
	    	Case cass = caseService.selectByPrimaryKey(caseid);
	    	Map map = new HashMap();
	    	map.put("isfirst", cass.getIsfirst());
	    	map.put("diagnosis", cass.getDiagnosis());
	    	map.put("treat", cass.getTreat());
	    	map.put("caseid", caseid);
	    	model.addAttribute("map", map);
	    	return "doc-case-manager-update";  
	    }  
	    @RequestMapping("/doctorCaseUpdateSubmit")  
	    @ResponseBody
	    public JSONObject doctorCaseUpdateSubmit(HttpServletRequest request,Model model){
	    	JSONObject json = new JSONObject();
	    	Integer currUserid =  (Integer) request.getSession().getAttribute("currUserid");
	    	Integer isfirst=Integer.parseInt(request.getParameter("formisfirst"));
	    	String diagnosis=request.getParameter("formdiagnosis");
	    	String treat=request.getParameter("formtreat");
	    	Integer caseid=Integer.parseInt(request.getParameter("formcaseid"));
	    	Case cass = new Case();
	    	cass.setIsfirst(isfirst);
	    	cass.setDiagnosis(diagnosis);
	    	cass.setTreat(treat);
	    	cass.setCaseid(caseid);
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    	cass.setVisitdate(sdf.format(new Date()));
	    	caseService.updateByPrimaryKeySelective(cass);
	    	json.put("msg", "修改成功");
	    	return json;
	    }  
	    @RequestMapping("/doctorCaseDelete")  
	    @ResponseBody
	    public JSONObject doctorCaseDelete(HttpServletRequest request,Model model){
	    	JSONObject json = new JSONObject();
	    	Integer caseid=Integer.parseInt(request.getParameter("caseid"));
	    	caseService.deleteByPrimaryKey(caseid);
	    	json.put("msg", "删除成功");
	    	return json;
	    }  
	    @RequestMapping("/doctorMedicinalAddInput")  
	    @ResponseBody
	    public JSONObject doctorMedicinalAddInput(HttpServletRequest request,Model model){
	    	JSONObject json = new JSONObject();
	    	Integer caseid=Integer.parseInt(request.getParameter("caseid"));
	    	String feecategory = request.getParameter("feecategory");
	    	Integer medicinalid=-1;
	    	Integer medicinalnum=-1;
	    	if(null!=request.getParameter("medicinalid") || ""!=request.getParameter("medicinalid")){
	    		medicinalid=Integer.parseInt(request.getParameter("medicinalid"));
	    	}
	    	if(request.getParameter("medicinalnum").length()>0){
	    		medicinalnum=Integer.parseInt(request.getParameter("medicinalnum"));
	    	}
	    	Fee fee = new Fee();
	    	fee.setCaseid(caseid);
	    	fee.setFeecategory(feecategory);
	    	if(feecategory.equals("1")){
	    		fee.setMedicinalid(medicinalid);
	    		fee.setMedicinalnum(medicinalnum);
	    	}
	    	if(feecategory.equals("2")){
	    		fee.setMedicinalid(5);
	    		fee.setMedicinalnum(1);
	    	}
	    	if(feecategory.equals("3")){
	    		fee.setMedicinalid(4);
	    		fee.setMedicinalnum(1);
	    	}
	    	feeService.insertSelective(fee);
	    	Map map = new HashMap();
	    	json.put("msg", "添加成功");
	    	return json;
	    } 
	    @RequestMapping("/doctorMedicinalDelete")  
	    @ResponseBody
	    public JSONObject doctorMedicinalDelete(HttpServletRequest request,Model model){
	    	JSONObject json = new JSONObject();
	    	Integer feeid=Integer.parseInt(request.getParameter("feeid"));
	    	feeService.deleteByPrimaryKey(feeid);
	    	return json;
	    } 
}
