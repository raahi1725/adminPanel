;(function () {
	
	'use strict';

	var isMobile = {
		Android: function() {
			return navigator.userAgent.match(/Android/i);
		},
			BlackBerry: function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
			iOS: function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
			Opera: function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
			Windows: function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
			any: function() {
			return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};

	var mobileMenuOutsideClick = function() {

		$(document).click(function (e) {
	    var container = $("#colorlib-offcanvas, .js-colorlib-nav-toggle");
	    if (!container.is(e.target) && container.has(e.target).length === 0) {

	    	if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-colorlib-nav-toggle').removeClass('active');
				
	    	}
	    
	    	
	    }
		});

	};


	var offcanvasMenu = function() {

		$('#page').prepend('<div id="colorlib-offcanvas" />');
		$('#page').prepend('<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle colorlib-nav-white"><i></i></a>');
		var clone1 = $('.menu-1 > ul').clone();
		$('#colorlib-offcanvas').append(clone1);
		var clone2 = $('.menu-2 > ul').clone();
		$('#colorlib-offcanvas').append(clone2);

		$('#colorlib-offcanvas .has-dropdown').addClass('offcanvas-has-dropdown');
		$('#colorlib-offcanvas')
			.find('li')
			.removeClass('has-dropdown');

		// Hover dropdown menu on mobile
		$('.offcanvas-has-dropdown').mouseenter(function(){
			var $this = $(this);

			$this
				.addClass('active')
				.find('ul')
				.slideDown(500, 'easeOutExpo');				
		}).mouseleave(function(){

			var $this = $(this);
			$this
				.removeClass('active')
				.find('ul')
				.slideUp(500, 'easeOutExpo');				
		});


		$(window).resize(function(){

			if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-colorlib-nav-toggle').removeClass('active');
				
	    	}
		});
	};

	var burgerMenu = function() {

		$('body').on('click', '.js-colorlib-nav-toggle', function(event){
			var $this = $(this);


			if ( $('body').hasClass('overflow offcanvas') ) {
				$('body').removeClass('overflow offcanvas');
			} else {
				$('body').addClass('overflow offcanvas');
			}
			$this.toggleClass('active');
			event.preventDefault();

		});
	};
	

	var contentWayPoint = function() {
		var i = 0;
		$('.animate-box').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('animated-fast') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .animate-box.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn animated-fast');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft animated-fast');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight animated-fast');
							} else {
								el.addClass('fadeInUp animated-fast');
							}

							el.removeClass('item-animate');
						},  k * 200, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '85%' } );
	};


	var dropdown = function() {

		$('.has-dropdown').mouseenter(function(){

			var $this = $(this);
			$this
				.find('.dropdown')
				.css('display', 'block')
				.addClass('animated-fast fadeInUpMenu');

		}).mouseleave(function(){
			var $this = $(this);

			$this
				.find('.dropdown')
				.css('display', 'none')
				.removeClass('animated-fast fadeInUpMenu');
		});

	};


	var goToTop = function() {

		$('.js-gotop').on('click', function(event){
			
			event.preventDefault();

			$('html, body').animate({
				scrollTop: $('html').offset().top
			}, 500, 'easeInOutExpo');
			
			return false;
		});

		$(window).scroll(function(){

			var $win = $(window);
			if ($win.scrollTop() > 200) {
				$('.js-top').addClass('active');
			} else {
				$('.js-top').removeClass('active');
			}

		});
	
	};


	// Loading page
	var loaderPage = function() {
		$(".colorlib-loader").fadeOut("slow");
	};


	var parallax = function() {

		if ( !isMobile.any() ) {
			$(window).stellar({
				horizontalScrolling: false,
				hideDistantElements: false, 
				responsive: true

			});
		}
	};

	var counter = function() {
		$('.js-counter').countTo({
			 formatter: function (value, options) {
	      return value.toFixed(options.decimals);
	    },
		});
	};


	var counterWayPoint = function() {
		if ($('#colorlib-counter').length > 0 ) {
			$('#colorlib-counter').waypoint( function( direction ) {
										
				if( direction === 'down' && !$(this.element).hasClass('animated') ) {
					setTimeout( counter , 400);					
					$(this.element).addClass('animated');
				}
			} , { offset: '90%' } );
		}
	};

	// Owl Carousel
	var owlCrouselFeatureSlide = function() {
		var owl = $('.owl-carousel');
		owl.owlCarousel({
			animateOut: 'fadeOut',
		   animateIn: 'fadeIn',
			autoplay: true,
			items: 1,
		   loop: true,
		   margin: 0,
		   responsiveClass: true,
		   nav: false,
		   dots: true,
		   autoplayHoverPause: true,
		   smartSpeed: 500,
		   navText: [
		      "<i class='icon-arrow-left3 owl-direction'></i>",
		      "<i class='icon-arrow-right3 owl-direction'></i>"
	     	]
		});

	};

	var bgVideo = function() {
		$('.player').mb_YTPlayer();
	};

	
	$(function(){
		mobileMenuOutsideClick();
		offcanvasMenu();
		burgerMenu();
		contentWayPoint();
		dropdown();
		goToTop();
		loaderPage();
		parallax();
		counter();
		counterWayPoint();
		owlCrouselFeatureSlide();
		bgVideo();
	});


}());

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

$(document).ready(function() {
    var input = document.querySelector("#branchContactShow");
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
       hiddenInput: "branchContactNo",
      // initialCountry: "auto",
      // localizedCountries: { 'de': 'Deutschland' },
      // nationalMode: false,
       onlyCountries: ['in'],
      // placeholderNumberType: "MOBILE",
      // preferredCountries: ['in', 'jp'],
      // separateDialCode: true,
      utilsScript: "./resources/js/telephone/utils.js",
    });
    
    var input1 = document.querySelector("#userContactShow");
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
         hiddenInput: "adminContact",
        // initialCountry: "auto",
        // localizedCountries: { 'in': 'India' },
        // nationalMode: false,
         onlyCountries: ['in'],
        // placeholderNumberType: "MOBILE",
        // preferredCountries: ['cn', 'jp'],
        // separateDialCode: true,
        utilsScript: "./resources/js/telephone/utils.js",
      });
});

function validate(evt) {
	  var theEvent = evt || window.event;
	
	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
}


