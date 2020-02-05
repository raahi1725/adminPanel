$(function() {
	$(".nav-item").removeClass("active");
	$("#customers").addClass("active");
});

function showHideOther() {
	if(document.getElementById("hearedFromSelect").value=="Other") {
		$("#othersDiv").removeClass("hide");
	}
	else {
		$("#othersDiv").addClass("hide");
	}
}

$(document).ready(function() {
    $(".js-example-basic-multiple").select2();
});
