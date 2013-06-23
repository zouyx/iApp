//页面载入的时候调用的方法
$(document).ready(function() { 
	$._messengerDefaults = {
			extraClasses: 'messenger-fixed messenger-theme-future messenger-on-top'
	}
	
});


//其他方法
//错误alert框的id
var _ALERT_ERROR_ID='alert-error';

function signin(btn) {
	$(btn).button('loading');
	
	$.ajax({
		url : '/signin',
		context : document.body,
		dataType : 'json',
		success:successHandler,
		error:errorHandler
	})
	/**
	 * .done(function() {
		alert('success!');
	});*/
}

var timeoutId;
function addAlert(content) {
	var existAlert = $('#' + _ALERT_ERROR_ID);
	if (existAlert.length == 0) {
		var alertDiv = $('<div id="' + _ALERT_ERROR_ID + '"/>');
		alertDiv.addClass('alert')
		.addClass('alert-error')
		.addClass('fade')
		.addClass('in');

		var alertClose = $('<button>&times;</button>');
		alertClose.addClass('close')
		.attr('data-dismiss', 'alert')
		.attr('type', 'button');
		
		var alertTitle = $('<p><h4>错误:</h4></p>');
		var alertText = $('<p/>');
		alertText.append(content);
		//拼接alert
		alertDiv.append(alertClose);
		alertDiv.append(alertTitle);
		alertDiv.append(alertText);
		
		$('#signinForm').append(alertDiv);
		
		timeoutId=window.setInterval('clearAlert()',2000);
	}else{
		window.clearInterval(timeoutId);
		timeoutId=window.setInterval('clearAlert()',2000);
	}
}

function clearAlert(){
	var existAlert = $('#' + _ALERT_ERROR_ID);
	if (existAlert.length> 0) {
		existAlert.alert('close');
	}
}

/**
 * 
 * @param jqXHR jqXHR
 * @param String textStatus
 * @param String errorThrown
 */
function errorHandler(jqXHR,textStatus,errorThrown) {
	addAlert('textStatus:'+textStatus);
	
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