function getCities() {
	var province = $("#provinceSel").val();
	$("#provinceSel").val(province);
	$.ajax({
		url : 'ObligMsg?method=3100',
		async : false,
		data : {
			"province" : province
		},
		type : "POST",
		success : function(data) {
			
			var a=JSON.parse(data);
			$("#citySel").empty();
			$('#citySel').append('<option>请选择</option>');
			for (var int = 0; int < a.length; int++) {
				$('#citySel').append('<option>'+a[int]+'</option>');
			}
			
		},
		error : function() {
			alert("获取城市数据失败");
		}
	});
};

$("#provinceSel").change(getCities);

/**
 * 检查是否为数字
 */
function checkNumber(data) {
	var reg = /^[0-9]*$/;
	return reg.test(data);
};
/**
 * 检查金钱输入
 * @returns {Boolean}
 */
function checkMoneyNum(){
	var moneyVal = $("#oblmoney").val();
	var txtv = "";
	if (checkNumber(moneyVal)) {
		txtv = txtv+moneyVal;
		$("#moneyTxt").text(txtv+".00  元");
	} else {
		$("#moneyTxt").text("请输入正确的金额");
		$("#oblmoney").focus();
	}
}
$("#oblmoney").blur(checkMoneyNum);
/**
 * 检查文本域长度
 * @returns {Boolean}
 */
function checkZxtxtLen(){
	var moneyVal = $("#zqtxtms").val();
	if (moneyVal.length > 100) {
		alert("文本域最多支持100个字符");
		$("#suboblbtn").attr({"disabled":"disabled"});
	} else {
		$("#suboblbtn").removeAttr("disabled");
	}
}
$("#zqtxtms").blur(checkZxtxtLen);
/**
 * 检查电话输入
 * @returns {Boolean}
 */
function checkPhoneNum(){
	var moneyVal = $("#weituophone").val();
	var txtv = "输入电话错误，请确保输入纯数字的电话号码";
	if (!checkNumber(moneyVal)) {
		alert(txtv);
	} else {
		return true;
	}
	//$("#weituophone").focus();
	return false;
}
$("#weituophone").blur(checkPhoneNum);
/**
 * 检查是否为空
 */
function checkNull(data) {
	if (data.trim().length == 0) {
		return false;
	} else {
		return true;
	}
};

