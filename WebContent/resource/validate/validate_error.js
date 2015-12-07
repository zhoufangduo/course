var ele ;

function showErrorPlacement(error, element) {
	
	ele = element;
	
	
	var errortips = '<div class="tooltips" id="'+ element.attr('name') +'_errortip">'
		+ '<div class="arrow arrow-border"></div><div class="arrow arrow-bg"></div>'
		+ '<div class="tipstext">'+ $(error).html()+'</div></div>';
	
	var errortip  = $("#" + element.attr('name') + "_errortip");
	
	if(!errortip.html()){
		$(element).after($(errortips));
	}else{
		errortip.children(".tipstext").html($(error).html());
	}
	
	if($(element).attr("class") == "time error"){
		$(element).attr("class","timeErr");
	}else{
		$(element).parent().addClass("has-error");
	}
}

function success(label) {
	
	$("#" + ele.attr('name') + "_errortip").remove();
	
	if($(ele).attr("class") == "timeErr"){
		$(ele).attr("class","timeSucc");
	}else{
		$(ele).parent().removeClass("has-error");
	}
}


function showModel(dom,url){
	$(dom).load(url);
}