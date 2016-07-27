/**
 * 分享JS
 */

/**
 * 分享到新浪微博
 * @param _img 分享显示的图片路径
 */
function shareSina(_img){
    var _shareUrl = 'http://v.t.sina.com.cn/share/share.php?&appkey=895033136';     //真实的appkey ，必选参数
    _shareUrl += '&url='+ encodeURIComponent(document.location);     //参数url设置分享的内容链接|默认当前页location，可选参数
    _shareUrl += '&title=' + encodeURIComponent(document.title);    //参数title设置分享的标题|默认当前页标题，可选参数
    _shareUrl += '&source=' + encodeURIComponent('');
    _shareUrl += '&sourceUrl=' + encodeURIComponent('');
    _shareUrl += '&content=' + 'utf-8';   //参数content设置页面编码gb2312|utf-8，可选参数
    _shareUrl += '&pic=' + encodeURIComponent(_img);  //参数pic设置图片链接|默认为空，可选参数
    window.open(_shareUrl);
}
/**
 * 分享到QQ空间
 * @param _img 分享显示的图片路径
 * @param _desc 分享的描述
 * @param _summary 分享的摘要
 * @param _site 分享来源
 */
function shareQzone(_img,_desc,_summary,_site){
	var _shareUrl = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?';
	_shareUrl += 'url=' + encodeURIComponent(document.location);   //参数url设置分享的内容链接|默认当前页location
	//_shareUrl += '&showcount=' + 0;      //参数showcount是否显示分享总数,显示：'1'，不显示：'0'，默认不显示
	//_shareUrl += '&desc=' + encodeURIComponent(_desc);    //参数desc设置分享的描述，可选参数
	//_shareUrl += '&summary=' + encodeURIComponent(_summary);    //参数summary设置分享摘要，可选参数
	_shareUrl += '&title=' + encodeURIComponent(document.title);    //参数title设置分享标题，可选参数
	//_shareUrl += '&site=' + encodeURIComponent(_site);   //参数site设置分享来源，可选参数
	_shareUrl += '&pics=' + encodeURIComponent(_img);   //参数pics设置分享图片的路径，多张图片以＂|＂隔开，可选参数
	window.open(_shareUrl);
}
/**
 * 分享到人人网
 * @param _url 分享的链接
 * @param _title 分享的标题
 */
function shareRenren(){
	var _shareUrl = 'http://widget.renren.com/dialog/share?';
    _shareUrl += 'resourceUrl=' + encodeURIComponent(document.location);   //分享的链接
    _shareUrl += '&title=' + encodeURIComponent(document.title);     //分享的标题
    _shareUrl += '&description=资源推荐';
    window.open(_shareUrl);
}
/**
 * 分享到腾讯微博
 * @param _site 分享来源
 * @param _img 分享显示的图片路径
 */
function shareQQWeibo(_site,_img){
	var _shareUrl = 'http://v.t.qq.com/share/share.php?';
    _shareUrl += 'title=' + encodeURIComponent(document.title);    //分享的标题
    _shareUrl += '&url=' + encodeURIComponent(document.location);    //分享的链接
    _shareUrl += '&appkey=5bd32d6f1dff4725ba40338b233ff155';    //在腾迅微博平台创建应用获取微博AppKey
    _shareUrl += '&site=' + encodeURIComponent(_site);   //分享来源
    _shareUrl += '&pic=' + encodeURIComponent(_img);    //分享的图片，如果是多张图片，则定义var _pic='图片url1|图片url2|图片url3....'
    window.open(_shareUrl);
}