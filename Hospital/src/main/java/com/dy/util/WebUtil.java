package com.dy.util;

import java.util.ArrayList;
import java.util.List;

import com.dy.model.Business;
import com.dy.model.Menu;
import com.dy.pub.PubUtil;

public class WebUtil  {
	public static String show(){
		return "asdf";
	}
	public static String gethtml(String role,String position){
		if("P".equals(role) && "HEAD".equals(position)){
			System.out.println(PubUtil.getMphead());
			return PubUtil.getMphead();
		}else if("D".equals(role) && "HEAD".equals(position)){
			return PubUtil.getMdhead();
		}else if("M".equals(role) && "HEAD".equals(position)){
			return PubUtil.getMmhead();
		}
		
		if("P".equals(role) && "LEFT".equals(position)){
			System.out.println(PubUtil.getMpleft());
			return PubUtil.getMpleft();
		}else if("D".equals(role) && "LEFT".equals(position)){
			return PubUtil.getMdleft();
		}else if("M".equals(role) && "LEFT".equals(position)){
			return PubUtil.getMmleft();
		}
		return "";
	}
	public static String getHeadHtml(List<Menu> menulist,List<Business> businesslist){
		StringBuilder sb = new StringBuilder();
		for(Menu menu:menulist){
			List<Business> list = new ArrayList<Business>();
			for(Business business:businesslist){
				if(menu.getMenucode().equals(business.getMenucode())){
					list.add(business);
				}
			}
			for(Business li:list){
				sb.append("<li><a href=\""+PubUtil.systemname+li.getUrl()+"\"><i class=\"icon-cog\"></i>"+li.getBusinessname()+"</a></li>");
			}
		}
		return sb.toString();
	}
	
	public static String getLeftHtml(List<Menu> menulist,List<Business> businesslist){
		StringBuilder sb = new StringBuilder();
		for(Menu menu:menulist){
			List<Business> list = new ArrayList<Business>();
			for(Business business:businesslist){
				if(menu.getMenucode().equals(business.getMenucode())){
					list.add(business);
				}
			}
			if(list.size()>1){
					sb.append("<li>");
					sb.append("<a href=\"#\" class=\"dropdown-toggle\">");
					sb.append("<i class=\"icon-desktop\"></i>");
					sb.append("<span class=\"menu-text\">"+menu.getMenuname()+"</span>");
					sb.append("<b class=\"arrow icon-angle-down\"></b>");
					sb.append("</a>");
					sb.append("<ul class=\"submenu\">");
					for(Business li:list){
						sb.append("<li><a href=\""+PubUtil.systemname+li.getUrl()+"\">");
						sb.append("<i class=\"icon-double-angle-right\"></i>");
						sb.append(li.getBusinessname());
						sb.append("</a></li>");
					}
					sb.append("</ul>");
					sb.append("</li>");
			}else if(list.size()==1){
					sb.append("<li>");
					sb.append("<a href=\""+PubUtil.systemname+list.get(0).getUrl()+"\" class=\"dropdown-toggle\">");
					sb.append("<i class=\"icon-group\"></i>");
					sb.append("<span class=\"menu-text\">"+list.get(0).getBusinessname()+"</span>");
					sb.append("<b class=\"arrow icon-angle-right\"></b>");
					sb.append("</a>");
					sb.append("</li>");
			}
		}
		return sb.toString();
		
	}
}
