$(document).ready(function() { 
	$._messengerDefaults = {
			extraClasses: 'messenger-fixed messenger-theme-future messenger-on-top'
	}
});

function signin() {
	$.ajax({
		url : "/signin",
		context : document.body,
		dataType : "json",
		success:successHandler,
		error:errorHandler
	})
	/**
	 * .done(function() {
		alert("success!");
	});*/
}

/**
 * 
 * @param jqXHR jqXHR
 * @param String textStatus
 * @param String errorThrown
 */
function errorHandler(jqXHR,textStatus,errorThrown) {
	$.globalMessenger().post("textStatus:"+textStatus);
	//alert("error code:"+textStatus+",error thrown:"+errorThrown);
}

/**
 * 
 * @param PlainObject data
 * @param String textStatus
 * @param jqXHR jqXHR
 */
function successHandler(data,textStatus,jqXHR) {
	alert("data:"+data);
}