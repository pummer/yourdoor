$(document).ready(function() {

	if($('#applyNow').length > 0)
	{
		$("#applyNowButton").click(function() {
			$("#applyNow").fadeOut(200, function(){
				alert("HELP HERE!!!");
				$("#checkEmail").fadeIn(200);
				$(".inputable").focus();
			});
		});
	}
	
	$("#SubmitEmail").click(function() {
		//$("#HomePageForm").submit();
		
        document.HomePageForm.submit();
	});
	
});
