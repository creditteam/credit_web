$(document).ready(function(){
	  $("#weixem").hover(function() {
	   	  $("#wxewm").animate({opacity: "show", left: "35%"}, "fast");
	  }, function() {
		  $("#wxewm").hide();
	  });
	  $("#shoujiem").hover(function() {
	   	  $("#sjewm").animate({opacity: "show", right: "25%"}, "fast");
	  }, function() {
		  $("#sjewm").hide();
	  });
});
