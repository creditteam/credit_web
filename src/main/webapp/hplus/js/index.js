$(function () {  
  $('[data-toggle="tooltip"]').tooltip();  
});
$(function () {  
  $('[data-toggle="popover"]').popover();  
});
  
$(document).ready(function () {  
    //自定义popover显示的内容  
   $('#mypopover').popover({   
        html : true,
        
        title: function() {  
          return $("#popover-head").html();  
        },  
        content: function() {  
          return $("#popover-content").html();  
        }  
    });    
});

$(document).ready(function () {  
    //自定义popover显示的内容  
   $('#weixinpopover').popover({   
        html : true,
        
        title: function() {  
          return $("#weixinpopover-head").html();  
        },  
        content: function() {  
          return $("#weixinpopover-content").html();  
        }  
    });    
});

$(document).ready(function () {  
   
   $('.eshouss').mouseover(function(){
	   $(this).css("background-color", "#FBFBFB");
    }); 
   $('.eshouss').mouseout(function(){
	   $(this).css("background-color", "#ffffff");
    }); 
});

$(document).ready(function(){
	  $("#naveso h4").mouseover(function(){
	    $(this).css("color","#ffa800");
	  });
	  $("#naveso h4").mouseout(function(){
	    $(this).css("color","#5f5d5d");
	  });
	});

$(function(){
    // 初始化轮播
    $("#start-slide").click(function(){
       $("#newCarousel").carousel('0');
    });
    // 停止轮播
    $("#pause-slide").click(function(){
       $("#newCarousel").carousel('1');
    });
    // 循环轮播到上一个项目
    $("#prev-slide").click(function(){
       $("#newCarousel").carousel('2');
    });
    // 循环轮播到下一个项目
    $("#next-slide").click(function(){
       $("#newCarousel").carousel('3');
    });
    // 循环轮播到某个特定的帧 
    $("#slide-one").click(function(){
       $("#newCarousel").carousel(4);
    });
    $("#slide-two").click(function(){
       $("#newCarousel").carousel(5);
    });
    $("#slide-three").click(function(){
       $("#newCarousel").carousel(2);
    });
 });

var slider_count=4;
$(".slider_p_div").hide();
$("#slider_p0").show();
$(".hi_btn").hide();
$("#hi_btn0").show();
$(".img_hover").animate({bottom:'10px'});
var slider_i=1;
var m_over=true;

function zx_slider(){
	if(m_over){
		if(slider_i<0){slider_i=slider_count;}
		//p
		$(".slider_p_div").hide();
		$("#slider_p"+slider_i).show();
		//p end
		//hi_btn
		$(".hi_btn").hide();
		$("#hi_btn"+slider_i).show();
		//hi_btn end
		//btn
		$(".btnbox img").stop(true,true);
		$(".btnbox img").removeClass("img_hover");
		$(".btnbox img").animate({bottom:'0px'},200);
		$("#btn_img"+slider_i).addClass("img_hover");
		$("#btn_img"+slider_i).animate({bottom:'10px'},200);
		//btn end
		$(".imgbox").stop();
		$(".imgbox").animate({left:'-450'*slider_i+'px'});
		if(slider_i<slider_count){
			slider_i++;	
		}else{
			slider_i=0;
		}
	}
}

$(".lbtn").click(function(){
	m_over=true;
	if(slider_i==0){slider_i=slider_count-1}else{slider_i=slider_i-2;}
	zx_slider();
	m_over=false;
});

$(".rbtn").click(function(){
	m_over=true;
	zx_slider();
	m_over=false;
});

function btn_m_over(btn_i){
	if(slider_i-1!=btn_i){
		m_over=true;
		slider_i=btn_i;
		zx_slider();
		m_over=false;
	}
}

zx_timer=setInterval("zx_slider();",5000); 
$(".zx_slider").mouseover(function(){
	m_over=false;
});
$(".zx_slider").mouseout(function(){
	m_over=true;
});

$(document).ready(function() { 
	 $('#naveso li').hover(function() {
	  $('ul', this).slideDown(500);
	 }, function() {
	  $('ul', this).slideUp(500);
	 });
	});

$(document).ready(function(){
	  $("#weixem").hover(function() {
		  //alert("1a");
	   	  $("#wxewm").animate({opacity: "show", left: "28%"}, "fast");
	  }, function() {
		  $("#wxewm").hide();
	  });
	 });
$(document).ready(function(){
	  $("#shoujiem").hover(function() {
		  //alert("1a");
	   	  $("#sjewm").animate({opacity: "show", right: "28%"}, "fast");
	  }, function() {
		  $("#sjewm").hide();
	  });
	 });

$(document).ready(function(){
	  $("#zx1div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx1cc").show();
	   	$("#zx1a").show();
	   	$("#zx1ss").hide();
	  }, function() {
		  $("#zx1cc").hide();
		  $("#zx1a").hide();
		  $("#zx1ss").show();
	  });
	 });

$(document).ready(function(){
	  $("#zx2div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx2cc").show();
	   	$("#zx2a").show();
	   	$("#zx2ss").hide();
	  }, function() {
		  $("#zx2cc").hide();
		  $("#zx2a").hide();
		  $("#zx2ss").show();
	  });
	 });

$(document).ready(function(){
	  $("#zx3div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx3cc").show();
	   	$("#zx3a").show();
	   	$("#zx3ss").hide();
	  }, function() {
		  $("#zx3cc").hide();
		  $("#zx3a").hide();
		  $("#zx3ss").show();
	  });
	 });

$(document).ready(function(){
	  $("#zx4div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx4cc").show();
	   	$("#zx4a").show();
	   	$("#zx4ss").hide();
	  }, function() {
		  $("#zx4cc").hide();
		  $("#zx4a").hide();
		  $("#zx4ss").show();
	  });
	 });

$(document).ready(function(){
	  $("#zx5div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx5cc").show();
	   	$("#zx5a").show();
	   	$("#zx5ss").hide();
	  }, function() {
		  $("#zx5cc").hide();
		  $("#zx5a").hide();
		  $("#zx5ss").show();
	  });
	 });

$(document).ready(function(){
	  $("#zx6div").hover(function() {
		  //alert("1a");zx1a
	   	 $("#zx6cc").show();
	   	$("#zx6a").show();
	   	$("#zx6ss").hide();
	  }, function() {
		  $("#zx6cc").hide();
		  $("#zx6a").hide();
		  $("#zx6ss").show();
	  });
	 });

function showzxTop() {
	var X = $('#zixunewm').offset().top;
	$("#zixunewm").css("top", X-20);
}
function showzxDown() {
	var X = $('#zixunewm').offset().top;
	$("#zixunewm").css("top", X+20);
}