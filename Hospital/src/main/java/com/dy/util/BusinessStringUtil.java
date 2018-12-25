package com.dy.util;

import java.util.List;

import com.dy.model.Business;

public class BusinessStringUtil {

	private static String patienthead;
	private String dochead;
	private String managerhead;
	private String patientleft;
	private String docleft;
	private String managerleft;
	
	public void getStringPatientHead(String projectname,List<Business> buslist){
		StringBuilder sb = new StringBuilder();
		for(Business bus:buslist){
			sb.append("<li><a href="+projectname+bus.getUrl()+" class=\"dropdown-toggle\"><i class=\"icon-asterisk\"></i><span class=\"menu-text\">"+bus.getBusinessname()+"</span><b class=\"arrow icon-angle-right\"></b></a></li>");
		}
		
	}
	
	
	
	
	
	
	
	
	public String getPatienthead() {
		return patienthead;
	}
	public void setPatienthead(String patienthead) {
		this.patienthead = patienthead;
	}
	public String getDochead() {
		return dochead;
	}
	public void setDochead(String dochead) {
		this.dochead = dochead;
	}
	public String getManagerhead() {
		return managerhead;
	}
	public void setManagerhead(String managerhead) {
		this.managerhead = managerhead;
	}
	public String getPatientleft() {
		return patientleft;
	}
	public void setPatientleft(String patientleft) {
		this.patientleft = patientleft;
	}
	public String getDocleft() {
		return docleft;
	}
	public void setDocleft(String docleft) {
		this.docleft = docleft;
	}
	public String getManagerleft() {
		return managerleft;
	}
	public void setManagerleft(String managerleft) {
		this.managerleft = managerleft;
	}
	
	
	
}
