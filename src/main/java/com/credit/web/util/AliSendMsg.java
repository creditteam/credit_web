package com.credit.web.util;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public final class AliSendMsg {
	
	public static void SendMsg(String nextInt, String user, String smsTemple) throws ApiException{
		TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23347789", "32e74a965ef57820375577e0fbd0acc6");
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend(user);
		req.setSmsType("normal");
		req.setSmsFreeSignName("注册验证");
		String sms = "{\"code\":\"" + nextInt +"\",\"product\":\"'快易收债权管理'O2O平台\"}";
//		req.setSmsParamString("{\"code\":\"123456\",\"product\":\"快易收债权管理\"}");
		req.setSmsParamString(sms);
		req.setRecNum(user);
		req.setSmsTemplateCode(smsTemple);//"SMS_7505878"
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
	}
	
	public static void SendModifyMsg(String nextInt, String user, String smsTemple) throws ApiException{
		TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23347789", "32e74a965ef57820375577e0fbd0acc6");
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend(user);
		req.setSmsType("normal");
		req.setSmsFreeSignName("变更验证");
		String sms = "{\"code\":\"" + nextInt +"\",\"product\":\"'快易收债权管理'O2O平台\"}";
//		req.setSmsParamString("{\"code\":\"123456\",\"product\":\"快易收债权管理\"}");
		req.setSmsParamString(sms);
		req.setRecNum(user);
		req.setSmsTemplateCode(smsTemple);//"SMS_7505878"
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
	}
	
	public static void SendProjectMsg(String phone, String user,String sendPhone) throws ApiException{
		TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23347789", "32e74a965ef57820375577e0fbd0acc6");
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend(user);
		req.setSmsType("normal");
		req.setSmsFreeSignName("变更验证");
		String sms = "{\"name\":\"" + user +"\",\"phone\":\""+phone+"',快易收债权管理'O2O平台\"}";
//		req.setSmsParamString("{\"code\":\"123456\",\"product\":\"快易收债权管理\"}");
		req.setSmsParamString(sms);
		req.setRecNum(sendPhone);
		req.setSmsTemplateCode("SMS_8540348");//SMS_8540348
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
	}

	public static void main(String[] args) {
		try {
			AliSendMsg.SendMsg("989898", "15975929998", "SMS_7505878");
		} catch (ApiException e) {
			e.printStackTrace();
		}
	}
}
