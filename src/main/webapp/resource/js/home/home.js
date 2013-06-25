//页面载入的时候调用的方法
$(document).ready(function() { 
	
});


//其他方法

function signin(btn) {
	$(btn).button('loading');
	
	$.ajax({
		url : '/signin',
		context : document.body,
		dataType : 'json',
		success:successHandler,
		error:errorHandler
	});
	/**
	 * .done(function() {
		alert('success!');
	});*/
}

/**
 * 
 * @param jqXHR jqXHR
 * @param String textStatus
 * @param String errorThrown
 */
function errorHandler(jqXHR,textStatus,errorThrown) {
	$('#signinForm').block('textStatus:'+textStatus);
	
	$('.btn').button('reset');
}

/**
 * 
 * @param PlainObject data
 * @param String textStatus
 * @param jqXHR jqXHR
 */
function successHandler(data,textStatus,jqXHR) {
	alert('data:'+data);
}