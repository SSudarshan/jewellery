<html lang="en">
<head>
<meta charset="utf-8">
<title>Defysope Technologies</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="author">

<!-- Le styles -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/bootstrap/css/bootstrap-responsive.min.css">
<link rel="stylesheet"
	href="resources/bootstrap/css/bootstrap-responsive.css">
<style>

/* GLOBAL STYLES
    -------------------------------------------------- */
/* Padding below the footer and lighter body text */
body {
	padding-bottom: 40px;
	color: #5a5a5a;
}

/* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
	margin-top: 20px;
	margin-bottom: -90px;
	/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

.navbar-wrapper .navbar {
	
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
	padding: 14px 20px 16px;
	/* Increase vertical padding to match navbar links */
	font-size: 16px;
	font-weight: bold;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav                                                &gt                           
	                   ; li                 
	                              &gt           
	                                   ; a {
	padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
	margin-top: 10px;
}

/* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

/* Carousel base class */
.carousel {
	margin-bottom: 60px;
}

.carousel .container {
	position: relative;
	z-index: 9;
}

.carousel-control {
	height: 80px;
	margin-top: 0;
	font-size: 120px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
	background-color: transparent;
	border: 0;
}

.carousel .item {
	height: 500px;
}

.carousel img {
	position: absolute;
	top: 0;
	left: 0;
	min-width: 100%;
	height: 500px;
}

.carousel-caption {
	background-color: transparent;
	position: static;
	max-width: 550px;
	padding: 0 20px;
	margin-top: 200px;
}

.carousel-caption h1,.carousel-caption .lead {
	margin: 0;
	line-height: 1.25;
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
}

.carousel-caption .btn {
	margin-top: 10px;
}

/* MARKETING CONTENT
    -------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .span4 p {
	margin-left: 10px;
	margin-right: 10px;
}

/* Featurettes
    ------------------------- */
.featurette-divider {
	margin: 80px 0; /* Space out the Bootstrap &lt;hr&gt; more */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

/* RESPONSIVE CSS
    -------------------------------------------------- */
@media ( max-width : 979px) {
	.container.navbar-wrapper {
		margin-bottom: 0;
		width: auto;
	}
	.navbar-inner {
		border-radius: 0;
		margin: -20px 0;
	}
	.carousel .item {
		height: 500px;
	}
	.carousel img {
		width: auto;
		height: 500px;
	}
	.featurette {
		height: auto;
		padding: 0;
	}
	.featurette-image.pull-left,.featurette-image.pull-right {
		display: block;
		float: none;
		max-width: 40%;
		margin: 0 auto 20px;
	}
}

@media ( max-width : 767px) {
	.navbar-inner {
		margin: -20px;
	}
	.carousel {
		margin-left: -20px;
		margin-right: -20px;
	}
	.carousel .container {
		
	}
	.carousel .item {
		height: 300px;
	}
	.carousel img {
		height: 300px;
	}
	.carousel-caption {
		width: 65%;
		padding: 0 70px;
		margin-top: 100px;
	}
	.carousel-caption h1 {
		font-size: 30px;
	}
	.carousel-caption .lead,.carousel-caption .btn {
		font-size: 18px;
	}
	.marketing .span4+.span4 {
		margin-top: 40px;
	}
	.featurette-heading {
		font-size: 30px;
	}
	.featurette .lead {
		font-size: 18px;
		line-height: 1.5;
	}
}

.active {
	background-position: right 12px;
}

.btn-slide {
	background: url("images/btn-slide.gif") no-repeat scroll right 0px
		transparent;
	color: #FFFFFF;
	display: block;
	font: bold 120%/100% Arial, Helvetica, sans-serif;
	height: 31px;
	margin: 0 auto;
	padding: 10px 10px 0 0;
	text-align: center;
	text-decoration: none;
	width: 144px;
	cursor: pointer;
}

#panel {
	background-color: #ECF1F7;
	background-image: linear-gradient(to bottom, #FFFFFF 0%, #E1E0EA 100%);
	border: 1px solid #B7C3D7;
	border-radius: 6px 6px 6px 6px;
	box-shadow: 0 -2px 0 rgba(58, 78, 103, 0.08) inset, 0 2px 0
		rgba(190, 210, 230, 0.5);
	font-size: 0.85em;
	margin-bottom: 8px;
	padding: 10px;
	margin-left: 450px;
	margin-right: 410px;
}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link href="../assets/ico/apple-touch-icon-144-precomposed.png"
	sizes="144x144" rel="apple-touch-icon-precomposed">
<link href="../assets/ico/apple-touch-icon-114-precomposed.png"
	sizes="114x114" rel="apple-touch-icon-precomposed">
<link href="../assets/ico/apple-touch-icon-72-precomposed.png"
	sizes="72x72" rel="apple-touch-icon-precomposed">
<link href="../assets/ico/apple-touch-icon-57-precomposed.png"
	rel="apple-touch-icon-precomposed">
<link href="../assets/ico/favicon.png" rel="shortcut icon">
</head>

<body>



	<!-- NAVBAR
    ================================================== -->
	<div class="navbar-wrapper">
		<!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
		<div class="container">

			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a href="#" class="brand">Defysope Inventory</a>
					<!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
							<!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li class="nav-header">Nav header</li>
									<li><a href="#">Separated link</a></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				<!-- /.navbar-inner -->
			</div>
			<!-- /.navbar -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar-wrapper -->



	<!-- Carousel
    ================================================== -->
	<div class="carousel slide" id="myCarousel">
		<div class="carousel-inner">
			<div class="item">
				<img alt="" src="images/slide-01.jpg">
				<div class="container">
					<div class="carousel-caption">
						<h1>Inventory Management</h1>
						<p class="lead">Manage your inventory and check your supply
							levels in real-time. Link inventory items together and create
							custom packages. Get notifications when specific inventory levels
							get low.</p>
						<a href="#" class="btn btn-large btn-slide1 btn-primary">Sign
							up today</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img alt="" src="images/slide-02.jpg">
				<div class="container">
					<div class="carousel-caption">
						<h1>Customer Accounts</h1>
						<p class="lead">With a built-in CRM you can keep track of all
							your customer accounts with ease. Add multiple contacts, private
							notes, and review their purchase history. See which estimates
							were accepted and which fell through.</p>
						<a href="#" class="btn btn-large btn-slide1 btn-primary">Sign
							up today</a>
					</div>
				</div>
			</div>
			<div class="item active">
				<img alt="" src="images/slide-03.jpg">
				<div class="container">
					<div class="carousel-caption">
						<h1>Sales Opportunities</h1>
						<p class="lead">Add prospects and sales opportunities. Keep
							track of your conversations, and customized estimates. Increase
							your sales by efficiently following up with more prospects in
							less time.</p>
						<a href="#" class="btn btn-large btn-slide1 btn-primary">Sign
							up today</a>
					</div>
				</div>
			</div>
		</div>
		<a data-slide="prev" href="#myCarousel" class="left carousel-control">‹</a>
		<a data-slide="next" href="#myCarousel" class="right carousel-control">›</a>
		<p class="slide">
			<span class="btn-slide active">Sign Up today</span>
		</p>
	</div>
	<div id="panel" style="display: none;">
		<form class="form-horizontal" method="post">
			<div class="control-group">
				<label for="inputEmail" class="control-label">Company Name</label>
				<div class="controls">
					<input type="text" placeholder="Company Name" id="companyName"
						name="companyName" style="height: 30px; width: 330px;">
				</div>
			</div>
			<div class="control-group">
				<label for="inputPassword" class="control-label">Unique
					Company Id</label>
				<div class="controls">
					<input type="text" placeholder="Unique Company Id" id="companyId"
						name="companyId" style="height: 30px; width: 330px;"> <span
						class="valid_id"></span>
				</div>
			</div>
			<div class="control-group">
				<label for="inputEmail" class="control-label">User Name</label>
				<div class="controls">
					<input type="text" placeholder="User Name" id="userName"
						name="userName" style="height: 30px; width: 330px;">
				</div>
			</div>
			<div class="control-group">
				<label for="inputEmail" class="control-label">Password</label>
				<div class="controls">
					<input type="password" placeholder="Password" id="password"
						name="password" style="height: 30px; width: 330px;">
				</div>
			</div>
			<div class="control-group">
				<label for="inputEmail" class="control-label">Email</label>
				<div class="controls">
					<input type="text" placeholder="Email" id="email" name="email"
						style="height: 30px; width: 330px;">
				</div>
			</div>

			<button class="btn btn-primary btn-large offset2 submit"
				type="button">Sign Up</button>

		</form>
	</div>
	<!-- /.carousel -->




	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="span4">
				<img src="images/icn-piggybank-d-70x70-v01.png" class="img-circle">
				<h2>Save You Money</h2>
				<p>Clearly Inventory is free until it’s cheap! There are no
					set-up fees, no seat licenses, no long term commitments, and no
					hidden fees or surprises. You get a powerful cloud based inventory
					solution for a low monthly rate based on how many users you have.</p>
			</div>
			<!-- /.span4 -->
			<div class="span4">
				<img src="images/icn-stopwatch-d-70x70-v01.png" class="img-circle">
				<h2>Save you Time</h2>
				<p>Is inventory tracking and management a huge time-suck for you
					and the people you work with? Bad software makes it hard to do
					simple tasks, collaborate with others, is frustrating to use, and
					difficult to learn and train others to use.</p>
			</div>
			<!-- /.span4 -->
			<div class="span4">
				<img src="images/icn-happyface-d-70x70-v01.png" class="img-circle">
				<h2>Improve your Life</h2>
				<p>Big companies can spend over $100,000 on Inventory or
					Warehouse Management Systems. Even some entry level inventory
					programs cost hundreds, or thousands, of dollars per user! Clearly
					Inventory just charges a low monthly rate & you can use it FREE for
					30 days!</p>
			</div>
			<!-- /.span4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->















		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->


	</div>
	<!-- /.container -->



	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/jquery-1.8.2.js"></script>
	<script src="resources/bootstrap/bootstrap.min.js"></script>
	<script src="resources/js/bootbox.js"></script>
	

	<script>
		!function($) {
			$(function() {
				// carousel demo
				$('#myCarousel').carousel()
			})
		}(window.jQuery)

		$(document).ready(function() {

			$(".btn-slide").click(function() {
				$("#panel").slideToggle("slow");
				$(this).toggleClass("active");
			});
			$(".btn-slide1").click(function() {
				$("#panel").slideToggle("slow");
			});

		});

		jQuery('button.submit').on('click', function() {

			jQuery.ajax({
				url : '/jewellery/signup.htmlaa',
				type : 'POST',
				data : {
					companyName : jQuery('input[name="companyName"]').val(),
					companyId : jQuery('input[name="companyId"]').val(),
					userName : jQuery('input[name="userName"]').val(),
					password : jQuery('input[name="password"]').val(),
					email : jQuery('input[name="email"]').val()
				}
			}).done(function(data) {
				if (data.success) {
					alert('Account Created');
				} else {
					alert('Account Not Created');
				}

			});
		});
		var _context = "/jewellery/availability.html";
		jQuery('input[name="companyId"]')
				.on(
						'blur',
						function() {

							jQuery
									.ajax(
											{
												url : _context,
												type : 'POST',
												data : {
													companyId : jQuery(
															'input[name="companyId"]')
															.val(),
												}
											})
									.done(
											function(data) {
												if (data.success) {
													jQuery('span.valid_id')
															.html(
																	'<b><font style="color:green;">Great its availalbe</font></b>');
												} else {
													jQuery('span.valid_id')
															.html(
																	'<b><font style="color:red;">Oops its not availalbe</font></b>');
												}

											});
						});
	</script>


</body>
</html>