var status = true;

$(document).ready(function(){
	$("#modify").click(function(){//[회원정보수정]버튼 클릭
		var query = {passwd:$("#passwd").val()};
		
		$.ajax({
			type: "post",
			url: "memberCheck.jsp",
			data: query,
			success: function(data){
				if(data == 1)//비밀번호가 맞음
		    		 $("#main_auth").load("modifyForm.jsp?passwd="+$("#passwd").val());	
		    	 else {//비밀번호 틀림
		    	  	 alert("비밀번호가 맞지 않습니다.");
		    	  	 $("#passwd").val("");
		    	  	 $("#passwd").focus();
		    	 }   
		   }
		});
	});
	
	$("#modifyProcess").click(function(){
		var query = {id:$("#id").val(), 
				  passwd:$("#passwd").val(),
			      name:$("#name").val(),
			      email:$("#email").val(),
			      gender:$(".gender").val(),
			      tel:$("#tel").val()};
		
		$.ajax({
			type: "post",
			url: "modifyPro.jsp",
			data: query,
			success: function(data){
				if(data == 1) {//정보수정 성공
				  alert("회원정보가 수정되었습니다.");
				  window.location.href="main.jsp";
				}
		   }
		});
	});
	
	//modifyForm.jsp페이지의 [취소]버튼 클릭시 자동실행
	$("#cancle").click(function(){
		window.location.href="main.jsp";
	});
	
	$("#delete").click(function(){//[회원정보수정]버튼 클릭
		var query = {passwd:$("#passwd").val()};
		
		//입력한 비밀번호를 갖고 memberCheck.jsp페이지 실행 
		$.ajax({
			type: "post",
			url: "memberCheck.jsp",
			data: query,
			success: function(data){
				if(data == 1){//비밀번호 맞음
					//회원탈퇴 페이지 deletePro.jsp 실행
					$.ajax({
						   type: "POST",
						   url: "deletePro.jsp",
						   data: query,
						   success: function(data){
							   if(data == 1){//탈퇴 성공
								  alert("회원 탈퇴가 되었습니다.");
								  $("#main_auth").load("loginForm.jsp");
						       }   
						   }
						});
				}else {//비밀번호 틀림
		    	  	 alert("비밀번호가 맞지 않습니다.");
		    	  	 $("#passwd").val("");
		    	  	 $("#passwd").focus();
		    	 }   
		   }
		});
	});	
	
 });