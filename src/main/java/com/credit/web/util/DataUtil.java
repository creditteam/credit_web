package com.credit.web.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public final class DataUtil {
	
//	public static String getNowDate(){
//		
//	}
	
	public static Date getCurrentTime(){
		return new Date();
	}
	
	//String类型转换为Date类型
	public static Date getConvertDateTime(String formatDate){
	    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	    Date date=null;
	    try {
	        date = format.parse(formatDate);
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
	    return date;
	}
	
	//当前时间格式：2015年11月12日   星期四
	public static String getCurrrentDateTime(){
	    Date date = new Date();  
	    SimpleDateFormat format=new SimpleDateFormat("yyyy年MM月dd日");
//	    DateFormat format = DateFormat.getDateInstance(DateFormat.FULL);   
	    String str = format.format(date); 
	     return str;
	}
	
	
	//将11/02/2015日期格式转换为2015年11月02日
	public static String getConvertStringTime(String str){	
		if(str!=null){
			String str1[]=str.split("/");
			str=str1[2]+"年"+str1[0]+"月"+str1[1]+"日";
		}else{
			System.out.println("请输入正确的日期格式！");
		}
		return str;
	}
	
	public static int nextInt() {
		Random random = new Random();
		int x = random.nextInt(899999);
		x = x+ 100000;
		
		return x;
	}
	
	public static void main(String[] args) {
		Date date = new Date(); 
		System.out.println(getCurrrentDateTime());
		System.out.println(date.getMonth());
		System.out.println(date.getDay());
	}

}
