package com.dy.pub;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.junit.Test;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import com.dy.model.Business;
import com.dy.model.Menu;
import com.dy.service.BusinessService;
import com.dy.service.MenuService;
import com.dy.util.WebUtil;

@Component
public class PubUtil implements ServletContextListener,ApplicationContextAware{
	
	private static ApplicationContext applicationContext;
	private static List<Menu> listmenu;
	private static List<Business> listbusiness;
	public static final String systemname = "/Hospital";
	private static String mphead;
	private static String mdhead;
	private static String mmhead;
	private static String mpleft;
	private static String mdleft;
	private static String mmleft;
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Test
	public void contextInitialized(ServletContextEvent arg0) {
		ServletContext application=arg0.getServletContext();
		System.out.println(123);
		MenuService menuService=(MenuService) applicationContext.getBean("menuService");
		BusinessService businessService=(BusinessService) applicationContext.getBean("businessService");
		List<Menu> menulist = menuService.selectAllMenu();
		List<Business> businesslist = businessService.selectAllBusiness();
		List<Menu> menuheadplist=new ArrayList<Menu>();
		List<Menu> menuheaddlist=new ArrayList<Menu>();
		List<Menu> menuheadmlist=new ArrayList<Menu>();
		List<Menu> menuleftplist=new ArrayList<Menu>();
		List<Menu> menuleftdlist=new ArrayList<Menu>();
		List<Menu> menuleftmlist=new ArrayList<Menu>();
		for(Menu menu:menulist){
			if("U".equals(menu.getOwnertype()) && "HEAD".equals(menu.getPosition())){
				menuheadplist.add(menu);
			}else if("D".equals(menu.getOwnertype()) && "HEAD".equals(menu.getPosition())){
				menuheaddlist.add(menu);
			}else if("M".equals(menu.getOwnertype()) && "HEAD".equals(menu.getPosition())){
				menuheadmlist.add(menu);
			}
			if("U".equals(menu.getOwnertype()) && "LEFT".equals(menu.getPosition())){
				menuleftplist.add(menu);
			}else if("D".equals(menu.getOwnertype()) && "LEFT".equals(menu.getPosition())){
				menuleftdlist.add(menu);
			}else if("M".equals(menu.getOwnertype()) && "LEFT".equals(menu.getPosition())){
				menuleftmlist.add(menu);
			}
		}
//		System.out.println(menulist.size());
//		System.out.println(businesslist.size());
//		System.out.println(menuheadplist.size());
//		System.out.println(menuheaddlist.size());
//		System.out.println(menuheadmlist.size());
//		System.out.println(menuleftplist.size());
//		System.out.println(menuleftdlist.size());
//		System.out.println(menuleftmlist.size());
		this.setMphead(WebUtil.getHeadHtml(menuheadplist, businesslist));
		this.setMdhead(WebUtil.getHeadHtml(menuheaddlist, businesslist));
		this.setMmhead(WebUtil.getHeadHtml(menuheadmlist, businesslist));
		this.setMpleft(WebUtil.getLeftHtml(menuleftplist, businesslist));
		this.setMdleft(WebUtil.getLeftHtml(menuleftdlist, businesslist));
		this.setMmleft(WebUtil.getLeftHtml(menuleftmlist, businesslist));
	}
 
	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		PubUtil.applicationContext=arg0;
		
	}

	public static List<Menu> getListmenu() {
		return listmenu;
	}

	public static void setListmenu(List<Menu> listmenu) {
		PubUtil.listmenu = listmenu;
	}

	public static List<Business> getListbusiness() {
		return listbusiness;
	}

	public static void setListbusiness(List<Business> listbusiness) {
		PubUtil.listbusiness = listbusiness;
	}

	public static ApplicationContext getApplicationContext() {
		return applicationContext;
	}
	public static String getMphead() {
		return mphead;
	}
	public static void setMphead(String mphead) {
		PubUtil.mphead = mphead;
	}
	public static String getMdhead() {
		return mdhead;
	}
	public static void setMdhead(String mdhead) {
		PubUtil.mdhead = mdhead;
	}
	public static String getMmhead() {
		return mmhead;
	}
	public static void setMmhead(String mmhead) {
		PubUtil.mmhead = mmhead;
	}
	public static String getMpleft() {
		return mpleft;
	}
	public static void setMpleft(String mpleft) {
		PubUtil.mpleft = mpleft;
	}
	public static String getMdleft() {
		return mdleft;
	}
	public static void setMdleft(String mdleft) {
		PubUtil.mdleft = mdleft;
	}
	public static String getMmleft() {
		return mmleft;
	}
	public static void setMmleft(String mmleft) {
		PubUtil.mmleft = mmleft;
	}
	public static String getSystemname() {
		return systemname;
	}
	
}

