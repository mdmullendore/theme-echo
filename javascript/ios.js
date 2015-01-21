(function() {
	var iOS = navigator.userAgent.match(/(iPad|iPhone|iPod)/g);
	if(iOS && $(".container").css("min-height") == "100vh"){
	  $(".container").css("min-height", "100px");	  
	  $("body").css("min-height", "100px");
	  $("#sidebar").css("min-height", "100px");
	}
}).call(this);