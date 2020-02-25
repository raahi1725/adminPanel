<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Raahi </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<link rel="stylesheet" href="./resources/css/login/animate.css">
	<link rel="stylesheet" href="./resources/css/login/icomoon.css">
	<link rel="stylesheet" href="./resources/css/login/bootstrap.css">
	<link rel="stylesheet" href="./resources/css/login/magnific-popup.css">
	<link rel="stylesheet" href="./resources/css/login/owl.carousel.min.css">
	<link rel="stylesheet" href="./resources/css/login/owl.theme.default.min.css">
	<link rel="stylesheet" href="./resources/css/login/style.css">
	<link rel="stylesheet" href="./resources/css/login/model.css">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<script src="./resources/js/login/all.js"></script>
	<script src="./resources/js/login/modernizr-2.6.2.min.js"></script>
	<script src="./resources/js/login/jquery.min.js"></script>
	<script src="./resources/js/login/jquery.easing.1.3.js"></script>
	<script src="./resources/js/login/bootstrap.min.js"></script>
	<script src="./resources/js/login/jquery.waypoints.min.js"></script>
	<script src="./resources/js/login/jquery.stellar.min.js"></script>
	<script src="./resources/js/login/jquery.mb.YTPlayer.min.js"></script>
	<script src="./resources/js/login/owl.carousel.min.js"></script>
	<script src="./resources/js/login/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/login/magnific-popup-options.js"></script>
	<script src="./resources/js/login/jquery.countTo.js"></script>
	<script src="./resources/js/login/main.js"></script>
	<script src="./resources/js/login/jquery-ui.min.js"></script>
	<script>
	</script>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<a href="#" class="simple-text logo-normal" style="float: left;">
        				<img src="./resources/img/WhiteLogo.png" class="logo"></img>
   					</a>
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							
						</div>
						<div class="col-md-auto text-right menu-1">
							<ul>
								<li class="active"><a href="index.html">Home</a></li>
								<li><a href="services.html">About Us</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">Services</a></li>
								<li><a href="shop.html">Pricing</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a class="btn btn-primary btn-lg btn-custom" data-toggle="modal" data-target="#modalLRForm">Login</a>
								</li>
								<li><a href="/register" class="btn btn-primary btn-lg btn-custom" target="_blank" >Signup</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<section id="home" class="video-hero" style="height: 540px;  background-size:cover; background-image: url(resources/img/login/cover_img_1.jpg);background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t text-center">
				<div class="display-tc">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box" style="margin-top:150px;">
								<h2>Start Your Free Trial Today</h2>
								<form:form class="form-register" action="/register" method="POST" modelAttribute="registerRequestBean">
									<form:input type="text" placeholder="Organisation Name" id="orgName" path="orgName" maxlength="50"/>
									<form:input type="email" id="userEmail" path="adminEmail" maxlength="50" placeholder="Email Id"/>
									<form:input type="text" id="userContact" path="username" maxlength="10" placeholder="Mobile No" onkeypress='validate(event)'/>
									<form:input type="password" id="userPassword" path="password" maxlength="20" minlength="5"  placeholder="Password"/>
									<p><input type="submit" value="Sign Up" class="btn btn-primary btn-lg btn-custom"/></p>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="colorlib-featured">
			<div class="row animate-box">
				<div class="featured-wrap">
					<div class="owl-carousel">
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="resources/img/login/dashboard_full_1.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="resources/img/login/dashboard_full_2.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-8 col-md-offset-2">
								<div class="featured-entry">
									<img class="img-responsive" src="resources/img/login/dashboard_full_1.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="colorlib-intro">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
						<h3>Its time to</h3>
						<h2>GROW YOUR BUSINESS</h2>
						<p>Raahi is the replacement for all the messy paper work. We aim to streamline your business operations so that 
							you can manage everything at one place without much effort. </p>
					</div>
				</div>
			</div>
		</div>
		<div class="colorlib-services colorlib-bg-white">
			<div class="container">
				<div class="row">
					<div class="col-md-4 animate-box">
						<div class="services">
							<div class="desc">
								<div class="text-center">
									<h3><span class="fontGraphics"><i class="fa fa-rocket"></i></span>Faster</h3>
								</div>
								<p>Manage your itineraries, customers & Staff on the go including custom images, id verifications,
								   payments and much more.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4  animate-box">
						<div class="services">
							<div class="desc">
								<div class="text-center">
									<h3><span class="fontGraphics"><i class="fa fa-tools"></i></span>Easier</h3>
								</div>
								<p>Get what exactly suits your business perfectly tailored from us
								   so that your business keeps running without any hustle
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<div class="desc">
								<div class="text-center">
									<h3><span class="fontGraphics"><i class="fas fa-bullhorn"></i></span>Smarter</h3>
								</div>
								<p>Raahi is one stop destination to reach all your target audience. 
									We provide a platform to full personalize your marketing campaigns</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="colorlib-pricing">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
						<h2>Pricing</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 text-center animate-box">
						<div class="pricing">
							<h2 class="pricing-heading">Starter</h2>
							<div class="price"><sup class="currency">Free</sup><small>1 month trial</small></div>
							<p>Use the panel for one month and check it for yourself. Buy when you are satisfied with the services.</p>
							<p><a href="#" class="btn btn-primary">Select Plan</a></p>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="pricing">
							<h2 class="pricing-heading">Basic</h2>
							<div class="price"><sup class="currency">Rs</sup>7K<small>per year</small></div>
							<p>Pay only for the basic services. Manage your data and get things done at such low cost</p>
							<p><a href="#" class="btn btn-primary">Select Plan</a></p>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="pricing">
							<h2 class="pricing-heading">Pro</h2>
							<div class="price"><sup class="currency">Rs</sup>15K<small>per year</small></div>
							<p>The Pro plan will take your business to another level. Get Customization done one the go. </p>
							<p><a href="#" class="btn btn-primary">Select Plan</a></p>
						</div>
					</div>
					<!-- <div class="col-md-3 text-center animate-box">
						<div class="pricing">
							<h2 class="pricing-heading">Unlimited</h2>
							<div class="price"><sup class="currency">$</sup>140<small>per month</small></div>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							<p><a href="#" class="btn btn-primary">Select Plan</a></p>
						</div>
					</div> -->
				</div>
			</div>
		</div>
		<div class="colorlib-work-featured colorlib-bg-white">
			<div class="container">
				<div class="row mobile-wrap">
					<div class="col-md-5 animate-box">
						<div class="mobile-img" style="background-image: url(resources/img/login/mobile-2.jpg);"></div>
					</div>
					<div class="col-md-7 animate-box">
						<div class="desc">
							<h2>Stay Organized instantly</h2>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p>Papers make you disorganized and really put a bad impression on your customers</p>
								</div>
							</div>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p>Carry less papers and more information</p>
								</div>
							</div>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p> Manage everything under one app and decide what you want to show</p>
								</div>
							</div>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">See Demo<i class="icon-arrow-right3"></i></a></p>
						</div>
					</div>
				</div>
				<div class="row mobile-wrap">
					<div class="col-md-5 col-md-push-7 animate-box">
						<div class="mobile-img" style="background-image: url(resources/img/login/mobile-1.jpg);"></div>
					</div>
					<div class="col-md-7 col-md-pull-5 animate-box">
						<div class="desc">
							<h2>Never Take Risk With Your Data</h2>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p>Avoid Last minute hustle because your customers dont want to loose
									   their time, money and personal information</p>
								</div>
							</div>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p>Avoid loss of any confidential information and assure them safe and memorable journey</p>
								</div>
							</div>
							<div class="features">
								<span class="icon"><i class="material-icons">check</i></span>
								<div class="f-desc">
									<p>Aware Customers are happy Customers</p>
								</div>
							</div>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">See Demo <i class="icon-arrow-right3"></i></a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- Till here -->
		<div id="colorlib-counter" class="colorlib-counters" style="background-image: url(resources/img/login/cover_img_1.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-4 col-sm-4 text-center animate-box">
							<div class="counter-entry">
								<span class="icon"><i class="flaticon-ribbon"></i></span>
								<div class="desc">
									<span class="colorlib-counter js-counter" data-from="0" data-to="1500" data-speed="5000" data-refresh-interval="50"></span>
									<span class="colorlib-counter-label">Of customers are satisfied with our professional support</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 text-center animate-box">
							<div class="counter-entry">
								<span class="icon"><i class="flaticon-church"></i></span>
								<div class="desc">
									<span class="colorlib-counter js-counter" data-from="0" data-to="500" data-speed="5000" data-refresh-interval="50"></span>
									<span class="colorlib-counter-label">Amazing preset options to be mixed and combined</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 text-center animate-box">
							<div class="counter-entry">
								<span class="icon"><i class="flaticon-dove"></i></span>
								<div class="desc">
									<span class="colorlib-counter js-counter" data-from="0" data-to="1200" data-speed="5000" data-refresh-interval="50"></span>
									<span class="colorlib-counter-label">Average response time on live chat support channel</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-blog">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
						<h2>News from our Blog</h2>
						<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">
						<article>
							<h2>Building the Mention Sales Application on Unapp</h2>
							<p class="admin"><span>May 12, 2018</span></p>
							<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
							<p class="author-wrap"><a href="#" class="author-img" style="background-image: url(resources/img/login/person1.jpg);"></a> <a href="#" class="author">by Dave Miller</a></p>
						</article>
					</div>
					<div class="col-md-4 animate-box">
						<article>
							<h2>Building the Mention Sales Application on Unapp</h2>
							<p class="admin"><span>May 12, 2018</span></p>
							<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
							<p class="author-wrap"><a href="#" class="author-img" style="background-image: url(resources/img/login/person2.jpg);"></a> <a href="#" class="author">by Dave Miller</a></p>
						</article>
					</div>
					<div class="col-md-4 animate-box">
						<article>
							<h2>Building the Mention Sales Application on Unapp</h2>
							<p class="admin"><span>May 12, 2018</span></p>
							<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
							<p class="author-wrap"><a href="#" class="author-img" style="background-image: url(resources/img/login/person3.jpg);"></a> <a href="#" class="author">by Dave Miller</a></p>
						</article>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-subscribe" class="colorlib-subscribe" style="background-image: url(resources/img/login/cover_img_1.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 text-center colorlib-heading animate-box">
						<h2>Already trusted by over 10,000 users</h2>
						<p>Subscribe to receive unapp tips from instructors right to your inbox.</p>
					</div>
				</div>
				<div class="row animate-box">
					<div class="col-md-6 col-md-offset-3">
						<div class="row">
							<div class="col-md-12">
							<form class="form-inline qbstp-header-subscribe">
								<div class="col-three-forth">
									<div class="form-group">
										<input type="text" class="form-control" id="email" placeholder="Enter your email">
									</div>
								</div>
								<div class="col-one-third">
									<div class="form-group">
										<button type="submit" class="btn btn-primary">Subscribe Now</button>
									</div>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer id="colorlib-footer">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3 colorlib-widget">
						<h4>About Raahi</h4>
						<p>Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3 colorlib-widget">
						<h4>Information</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#"><i class="icon-check"></i> Home</a></li>
								<li><a href="#"><i class="icon-check"></i> Services </a></li>
								<li><a href="#"><i class="icon-check"></i> About</a></li>
								<li><a href="#"><i class="icon-check"></i> Blog</a></li>
								<li><a href="#"><i class="icon-check"></i> Contact</a></li>
								<li><a href="#"><i class="icon-check"></i> Privacy</a></li>
							</ul>
						</p>
					</div>

					<div class="col-md-3 colorlib-widget">
						<h4>Recent Blog</h4>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(resources/img/login/blog-1.jpg);">
							</a>
							<div class="desc">
								<h2><a href="blog.html">Photoshoot Technique</a></h2>
								<p class="admin"><span>30 March 2018</span></p>
							</div>
						</div>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(resources/img/login/blog-2.jpg);">
							</a>
							<div class="desc">
								<h2><a href="blog.html">Camera Lens Shoot</a></h2>
								<p class="admin"><span>30 March 2018</span></p>
							</div>
						</div>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(resources/img/login/blog-3.jpg);">
							</a>
							<div class="desc">
								<h2><a href="blog.html">Imahe the biggest photography studio</a></h2>
								<p class="admin"><span>30 March 2018</span></p>
							</div>
						</div>
					</div>

					<div class="col-md-3 colorlib-widget">
						<h4>Contact Info</h4>
						<ul class="colorlib-footer-links">
							<li>abc , <br> Pune</li>
							<li><a href="tel://1234567920"><i class="icon-phone"></i> 8550812500</a></li>
							<li><a href="mailto:info@yoursite.com"><i class="icon-envelope"></i> info@myraahi.com</a></li>
							<li><a href="#"><i class="icon-location4"></i> yourwebsite.com</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copy">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --><br> 
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <div class="modal-content">
      <div class="modal-c-tabs">
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item active">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user mr-1"></i>&nbsp;&nbsp;&nbsp;Login</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade in  active" id="panel7" role="tabpanel">
            <div class="modal-body mb-1">
              <form method="POST" action="/login" id="loginForm" class="form-signin" >
              	  <div class="form-group ${error != null ? 'has-error' : ''}">
	              	  <span>${message}</span>
	              	  <span>${error}</span>
		              <div class="md-form form-sm mb-5">
		                <span class="icon"><i class="fas fa-envelope prefix"></i></span>
		                <input name="username" type="text" class="form-control-login" placeholder="Mobile No">
		              </div>
		              <div class="md-form form-sm mb-4">
		                <span class="icon"><i class="fas fa-lock prefix"></i></span>
		                <input name="password" type="password" class="form-control-login" placeholder="Password">
		                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	 	              </div>
		              <div class="text-center mt-2">
		                <button class="btn btn-info" type="submit">Log in <i class="fas fa-sign-in ml-1"></i></button>
		              </div>
		           </div>
	          </form>
            </div>
            <div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
          </div>
        </div>
      </div>
     </div>
</body>
</html>

