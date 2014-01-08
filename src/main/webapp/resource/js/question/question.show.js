//页面载入的时候调用的方法
$(document).ready(function() {

});


function nextTab(){
	$('#myTab li.active').next().children('a').tab('show');
}