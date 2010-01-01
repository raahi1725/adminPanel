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
	/*$(function() {
		$("#regDate").datepicker({
			changeMonth : true,
			changeYear : true,
			showButtonPanel : true,
			yearRange : "1850:2090",
			dateFormat : "dd-mm-yy"

		});
	}); */
	$.ajax({
		dataType : "json",
		url : 'maxRegNo',
		headers : {
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},
		type : 'GET',
		success : function(data) {
			alert(data)
			document.getElementById("regNo").value = data;
		},
		error : function(data) {
		}
	});
	
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
       hiddenInput: "contactNo",
      // initialCountry: "auto",
      // localizedCountries: { 'de': 'Deutschland' },
      // nationalMode: false,
       onlyCountries: ['in'],
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
         hiddenInput: "altContactNo",
        // initialCountry: "auto",
        // localizedCountries: { 'de': 'Deutschland' },
        // nationalMode: false,
         onlyCountries: ['in'],
        // placeholderNumberType: "MOBILE",
        // preferredCountries: ['cn', 'jp'],
        // separateDialCode: true,
        utilsScript: "./resources/js/telephone/utils.js",
      });
});

function onLoadData() {
	$('#searchParam').autocomplete({
		source : function(request, response) {
			$('input:text[name=nameIdHidden]').val("");
			jQuery.ajax({
				url : 'searchCustomer',
				dataType : 'json',
				type : 'GET',
				data : {
					searchParameter : request.term
				},
				success : function(data) {
						response(jQuery.map(data,function(item) {
						return {
							label : item.searchedField,
							value : item.searchedField,
							id : item.customerId
						};
					}));
				},
				error : function(data) {
				}
			});
		},
	focus : function(event, ui) {
		document.getElementById("customerSearchId").value=ui.item.id;
		var serachedField = ui.item.value;
		var arr = [];
		arr =	serachedField.split('-');
		document.getElementById("customerSearchRegNo").value = arr[0];
		document.getElementById("customerSearchName").value = arr[1];
		document.getElementById("customerSearchContact").value = arr[2];
		return false;
	},
	select : function(event, ui) {
		document.getElementById("customerSearchId").value=ui.item.id;
		var arr = [];
		arr =	ui.item.value.split('-');
		document.getElementById("customerSearchRegNo").innerHTML = arr[0];
		document.getElementById("customerSearchName").innerHTML = arr[1];
		document.getElementById("customerSearchContact").innerHTML = arr[2];
	},
	open : function() {
		//$(this).removeClass("ui-corner-all").addClass("ui-corner-top");

	},
	close : function() {
		//$(this).removeClass("ui-corner-top").addClass("ui-corner-all");
	}
	});
}

function getSearchDetails() {
	var customerId = document.getElementById("customerSearchId").value;
	$.ajax({
		dataType : "json",
		url : 'customerDetails?customerId='+customerId,
		headers : {
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},
		type : 'GET',
		success : function(data) {
			document.getElementById("customerId").value=data.customerId;
			document.getElementById("regNo").value=data.regNo;
			document.getElementById("regDate").value=data.regDate;
			document.getElementById("firstName").value=data.firstName;
			document.getElementById("middleName").value=data.middleName;
			document.getElementById("lastName").value=data.lastName;
			document.getElementById("emailId").value=data.emailId;
			document.getElementById("phone").value=data.contactNo;
			document.getElementById("phone1").value=data.altContactNo;
			document.getElementById("gender").value=data.gender;
			document.getElementById("birthDate").value=data.birthDate;
			document.getElementById("bloodGroup").value=data.bloodGroup;
			document.getElementById("countryId").value=data.country;
			document.getElementById("stateId").value=data.state;
			document.getElementById("cityId").value=data.city;
			document.getElementById("address").value=data.address;
			document.getElementById("pinCode").value=data.pinCode;
			document.getElementById("casteCategory").value=data.casteCategory;
			document.getElementById("occupation").value=data.occupation;
			document.getElementById("nationality").value=data.nationality;
			document.getElementById("referalCodeId").value=data.referalCodeId;
			document.getElementById("hearedFromSelect").value=data.hearedFrom;
			document.getElementById("other").value=data.other;
		},
		error : function(data) {
		}
	});
}
