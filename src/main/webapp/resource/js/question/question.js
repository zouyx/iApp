//页面载入的时候调用的方法
$(document).ready(function() {
	$("#result").load("main");
	//parent.resizeHeight(document.getElementById("frame").scrollHeight);
	
	$('#myModal').on('hidden', function() {
		$(document).trigger("clear-alert-id.message");
	});
	$('#myModal').modal({
		show:true,
		keyboard:false
	});

});

function setcwinheight() {
	var bobo = document.getelementbyid("frame"); // iframe id
	if (document.getelementbyid) {
		if (bobo && !window.opera) {
			if (bobo.contentdocument && bobo.contentdocument.body.offsetheight) {
				bobo.height = bobo.contentdocument.body.offsetheight;
			} else if (bobo.document && bobo.document.body.scrollheight) {
				bobo.height = bobo.document.body.scrollheight + 30;
				// alert(document.getelementbyid(”amdright”).style.width);
			}
		}
	}
}