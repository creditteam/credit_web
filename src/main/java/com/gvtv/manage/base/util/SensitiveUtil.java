package com.gvtv.manage.base.util;

/**
 * 敏感词屏蔽
 * @author hasee
 *
 */
public class SensitiveUtil {
	
	public static String shieldName(String name){
		if(null == name || "".equals(name)){
			return "";
		}
		String result = "";
		if(name.length() == 2){
			result = name.substring(0,1)+" *";
		}else if(name.length() == 3){
			result = name.substring(0,1)+" * "+name.substring(2,3);
		}else if(name.length() == 4){
			result = name.substring(0,2)+" * "+name.substring(3,4);
		}else if(name.length() > 4){
			result = name.substring(0,2)+"**"+name.substring(4,name.length());
		}
		return result;
	}
	
	public static String shieldPhone(String phone){
		if(null == phone || "".equals(phone)){
			return "";
		}
		String result = "";
		if(phone.length() > 7){
			result = phone.substring(0,3)+"****"+phone.substring(7,phone.length());
		}else if(phone.length() <= 7 && phone.length() >= 4){
			result = phone.substring(0,3)+"****";
		}else{
			result = phone;
		}
		return result;
	}
	
	public static String shieldCartID(String cartId){
		String result = "";
		if(cartId.length() >= 14){
			result = cartId.substring(0,6)+"********"+cartId.substring(14,cartId.length());
		}else if(cartId.length() > 4 && cartId.length() < 14){
			result = cartId.substring(0,cartId.length()-4)+"****";
		}else{
			result = cartId;
		}
		return result;
	}
	
	public static String shieldFirmName(String firmName){
		if(null == firmName || "".equals(firmName)){
			return "";
		}
		String result = "";
		if(firmName.length() > 7){
			result = firmName.substring(0,3)+"****"+firmName.substring(firmName.length()-4,firmName.length());
		}else if(firmName.length() <= 7 && firmName.length() >= 3){
			result = "* " + firmName.substring(firmName.length()-3,firmName.length());
		}
		return result;
	}
	
	public static void main(String[] args) {
		String cartId = "432524198812281917";
		String result = cartId.substring(0,6)+"********"+cartId.substring(14,cartId.length());
		System.out.println(result);
	}
	
}
