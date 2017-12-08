<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<head>
<title>Customer Search</title>
	
<jsp:include page="/links.jsp"></jsp:include>
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	</script>
	    <style type="text/css">
	
/* 	body {
    background-color: #eee;
} */
 *[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 0.3em;
		}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
	} 
    </style>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
<script type="text/javascript">

</script>
	<div class="top-main">
		<div class="number">
			<h3><i class="fa fa-phone" aria-hidden="true"></i> +91 08956562027</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="http://www.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="http://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="http://www.google.com"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="http://www.pinterest.com"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="http://www.linkedin.com"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		  <form action="#" method="post" class="navbar-form navbar-left">
			
			
			
			<!-- Right Header Search Code here...... -->
	<!-- 		<div class="form-group">
				<input type="search" class="form-control" placeholder="Search">
			</div> -->
				<button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
				<!-- <button type="submit" class="btn btn-default">Submit</button> -->
			</form>
		</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
	</div>
		<!-- Top-Bar -->
		<jsp:include page="head.jsp"></jsp:include>
				<div class="logo">
			<a href="admin"><!--<i class="fa fa-inr" aria-hidden="true"></i>--><span>Customer search</span></a>
			</div>
		<!-- //Top-Bar -->
		<div class="container">
            <form class="form-horizontal" role="form" action="/dccb/custsearch">
                
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Account Number</label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="Enter acc. no." name="AccNo" class="form-control" autofocus>
                       
                    </div>
                </div>
                
                
                  <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
              	<button type="submit" class="btn btn-primary btn-block">Search</button>
                        <!--   <a class="btn btn-primary" href="empsavee" role="button">Save</a> -->
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
<!-- footer -->
<%-- <jsp:include page="foot.jsp"></jsp:include> --%>
<!-- copyright -->
<section class="copyright">
 <div class="agileits_copyright text-center">
   <p>© 2017 CosMos Co-operative Bank. All rights reserved | Design by Amplesoftech</p>
 </div>
</section>
<!-- //copyright -->
<!-- //footer -->



	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->