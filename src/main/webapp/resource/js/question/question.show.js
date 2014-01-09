//页面载入的时候调用的方法
$(document).ready(function() {
	//读取配置的问题,并解析
	var obj = $.parseJSON(questions);
	
	//循环生成
	//最上层div
	var div="";
	//题目标题
	var questionTitle="";
	//题目内容
	var question="";
	
	//答案行
	var answerRow="";
	//答案行的详情
	var answerRowDetail="";
	//答案按钮
	var answerButton="";
	
	//页脚
	var li="";
	//页脚链接
	var lia="";
	
	//下一页
	var nextButton="";

	
	$.each(obj.root,function(idx,item){
		//各种初始化
		div=$('<div class="tab-pane"/>');
		li=$('<li/>');
		lia=$('<a/>');
		
		if(item.active){
			div.addClass('active');
			
			li.addClass('active');
		}
		
		if(item.id){
			div.attr('id',item.id);
			
			lia.attr('href','#'+item.id);
		}
		
		//题目标题
		if(item.title){
			questionTitle=$('<h3 class="text-center"/>');
			questionTitle.text(item.title);
			div.append(questionTitle);
			
			lia.text(item.title);
		}
		
		//组织页脚
		li.append(lia);
		
		//题目详情
		if(item.question){
			question=$('<h2 class="text-center"/>');
			question.text(item.question);
			div.append(question);
		}
		
		//生成答案选择
		$.each(item.answers,function(answerIdx,answer){
			//alert(item.answers.length);
			
			answerRowDetail=$('<div class="span3"/>');
			//答案按钮
			answerButton=$('<button class="btn btn-large btn-block" type="button"/>');
			if(answer.value){
				answerButton.text(answer.value);
			}
			//增加action及handler
			if(answer.action&&answer.handler){
				answerButton.attr(answer.action,answer.handler);
			}
			//answer
			if(answer.flag){
//				answerButton.attr(answer.action,answer.handler);
				answerButton.addClass(answer.flag);
			}
			
			answerRowDetail.append(answerButton);
			
			if(answerIdx%2==0){
				//空格
				div.append($('<br/>'));
				//创建行头
				answerRow=$('<div class="row"/>');
				//保持样式
				answerRowDetail.addClass('offset3');
				//alert('answerIdx:'+answerIdx+',answer:'+answer.value);
				answerRow.append(answerRowDetail);
				
				//如果等于行数就add到div
				if(item.answers.length-1==answerIdx){
					div.append(answerRow);
				}
			}else{
				//增加去行
				answerRow.append(answerRowDetail);
				div.append(answerRow);
			}
		});
		
		//增加内容
		$('#tab-content').append(div);
		
		//增加页脚
		$('#footer').append(li);
		
	});
});

var timer;
//初始化参数
var p=0;
function nextTab(o){
	//校验
	if(p>0&&p<105){
		alert('思考紧喔大佬,等阵先啦!!');
		return;
	}
	
	//初始化进度条
	this.initProgressBar();
	
	var btn = $(o);
	//progress div
	var pd=$("#nextBtn");
	//progress bar
	var pb=$("div[class=bar]");
	//增加提示
	pb.text("比我淋下!!!");

	timer = setInterval(function(){
		p += 30;
		pb.css("width", p + "%");
		if (p >= 105) {
			if(btn.hasClass('true')){
				pb.text("");
				pb.addClass("bar-success");
				//下一页
				var a=$("<a onclick='toNext();' href='#'>你岩左啦!下一题>>></a>");
				pb.append(a);
			}else{
				pb.text("你唔岩喔!!!");
				pb.addClass("bar-danger");
			}
			window.clearInterval(timer);
		}
	}, 500);
}

//初始化进度条
function initProgressBar(){
	//初始化参数
	p=0;
	
	var pb=$("div[id=bar]");
	pb.removeClass();
	pb.addClass("bar");
	pb.css("width", "0%");
	
	pb.empty();
}

//下一页
function toNext() {
	//初始化进度条
	this.initProgressBar();
	
	$('#footer li.active').next().children('a').tab('show');
}