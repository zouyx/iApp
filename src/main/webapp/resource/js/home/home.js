//页面载入的时候调用的方法
$(document).ready(function() {
	$('#myModal').on('hidden', function() {
		$(document).trigger("clear-alert-id.message");
	});
});

// 其他方法

function signin(btn) {
	$(btn).button('loading');

	$.ajax({
		url : 'signin',
		context : document.body,
		dataType : 'json',
		success : successHandler,
		error : errorHandler
	});
}

/**
 * 
 * @param jqXHR
 *            jqXHR
 * @param String
 *            textStatus
 * @param String
 *            errorThrown
 */
function errorHandler(jqXHR, textStatus, errorThrown) {
	$(document).trigger("clear-alert-id.message");

	$(document).trigger(
			"set-alert-id-message",
			{
				message : '错误:textStatus-' + textStatus + ',errorThrown-'
						+ errorThrown,
				priority : "error"
			});

	$('.btn').button('reset');
}

/**
 * 
 * @param PlainObject
 *            data
 * @param String
 *            textStatus
 * @param jqXHR
 *            jqXHR
 */
function successHandler(data, textStatus, jqXHR) {
	var info=data[0];
	if(info.isLogin==true){
		alert('登录成功!');
		$('#myModal').modal('hide');
	}
	
	$(document).trigger("clear-alert-id.message");
	$('.btn').button('reset');
}