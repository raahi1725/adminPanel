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
    var input = document.querySelector("#phone");
    window.intlTelInput(input, {
      // allowDropdown: false,
      // autoHideDialCode: false,
       autoPlaceholder: "off",
      // dropdownContainer: document.body,
      // excludeCountries: ["us"],
      // formatOnDisplay: false,
      // geoIpLookup: function(callback) {
      //     $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
      //     var countryCode = (resp && resp.country) ? resp.country : "";
      //      callback(countryCode);
      //    });
      // },
      // hiddenInput: "full_number",
      // initialCountry: "auto",
      // localizedCountries: { 'de': 'Deutschland' },
      // nationalMode: false,
      // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
      // placeholderNumberType: "MOBILE",
      // preferredCountries: ['in', 'jp'],
      // separateDialCode: true,
      utilsScript: "./resources/js/telephone/utils.js",
    });
    
    var input1 = document.querySelector("#phone1");
    window.intlTelInput(input1, {
        // allowDropdown: false,
        // autoHideDialCode: false,
         autoPlaceholder: "off",
        // dropdownContainer: document.body,
        // excludeCountries: ["us"],
        // formatOnDisplay: false,
        // geoIpLookup: function(callback) {
        //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
        //     var countryCode = (resp && resp.country) ? resp.country : "";
        //     callback(countryCode);
        //   });
        // },
        // hiddenInput: "full_number",
        // initialCountry: "auto",
        // localizedCountries: { 'de': 'Deutschland' },
        // nationalMode: false,
        // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
        // placeholderNumberType: "MOBILE",
        // preferredCountries: ['cn', 'jp'],
        // separateDialCode: true,
        utilsScript: "./resources/js/telephone/utils.js",
      });
});


