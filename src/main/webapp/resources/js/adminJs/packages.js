$(function(){
    $("#form-total").steps({
        headerTag: "h2",
        bodyTag: "section",
        transitionEffect: "fade",
        enableAllSteps: true,
        autoFocus: true,
        transitionEffectSpeed: 500,
        titleTemplate : '<div class="title">#title#</div>',
        onFinished: function (event, currentIndex) { 
        	$("#registerForm").trigger("click");
    	},
    	onFinishing: function (event, currentIndex) {
    		if(document.getElementById("adminFirstName").value==""){
				alert("Please fill first name ");
				document.getElementById("adminFirstName").focus;
				return false;
			}
    		if(document.getElementById("adminLastName").value==""){
				alert("Please fill last name ");
				document.getElementById("adminLastName").focus;
				return false;
			}
    		if(document.getElementById("userContactShow").value==""){
				alert("Please fill contact no ");
				document.getElementById("userContactShow").focus;
				return false;
			}
    		if(document.getElementById("userEmail").value==""){
				alert("Please fill email address ");
				document.getElementById("userEmail").focus;
				return false;
			}
    		if(document.getElementById("userPassword").value==""){
				alert("Please fill email address ");
				document.getElementById("userPassword").focus;
				return false;
			}
    		if(document.getElementById("userPassword").value!=document.getElementById("userConfirmPassword").value){
				alert("Passwords donot match ");
				document.getElementById("userConfirmPassword").focus;
				return false;
			}
    		
    		return true; 
    	},
    	onStepChanging: function (event, currentIndex, newIndex) {
    		if(currentIndex==0) {
    			if(document.getElementById("orgName").value==""){
    				alert("Please fill organization name ");
    				document.getElementById("orgName").focus;
    				return false;
    			}
    			$("#aboutDiv").addClass('step-icon-green')
    			$("#aboutDiv").css("background-color","#2ca572");
    		}
    		if(currentIndex==0 && newIndex==2 && document.getElementById("headBranchName").value=="") {
    			alert("Please fill head branch details first")
    			return false;
    		}
    		if(currentIndex==1 && newIndex!=0) {
    			if(document.getElementById("headBranchName").value==""){
    				alert("Please fill branch name ");
    				document.getElementById("headBranchName").focus;
    				return false;
    			}
	    		if(document.getElementById("branchContactShow").value==""){
					alert("Please fill contact no ");
					document.getElementById("branchContactShow").focus;
					return false;
				}
    			$("#headBranchDiv").addClass('step-icon-green')
    			$("#headBranchDiv").css("background-color","#2ca572");
    		}
    		return true; 
    	},
        labels: {
            previous : 'Back Step',
            next : 'Next Step',
            finish : 'Submit',
            current : ''
        },
    });
    $("#date").datepicker({
        dateFormat: "MM - DD - yy",
        showOn: "both",
        buttonText : '<i class="zmdi zmdi-chevron-down"></i>',
    });
});