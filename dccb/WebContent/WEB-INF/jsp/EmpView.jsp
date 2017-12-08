<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<head>
<title>Employee Information</title>
	
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
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>

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
		<br>

		<div class="container-fluid">
			<table class="table table-hover table-dark table-striped" border="1" align="center" >  
				<thead>
				<tr><th class="text-center">Name</th class="text-center"><th class="text-center">Father Name</th><th class="text-center">PF acc. no.</th><th class="text-center">Email</th><th class="text-center">Designation</th><th class="text-center">Experience</th><th class="text-center">mobile No.</th><th class="text-center">DOB</th><th class="text-center">DOJ</th><th class="text-center">Gender</th><th class="text-center">Married Status</th><th class="text-center">Country</th><th class="text-center">State</th><th class="text-center">City</th><th class="text-center">Pincode</th></tr>  
				</thead>
				<tbody>
				<c:forEach var="li" items="${list}"  >
				<tr>
				<td>${li.getName() }</td>
				<td>${li.getFatherName() }</td>
				<td>${li.getPFAccNo() }</td>
				<td><a href="#">${li.getEmail() }</a></td>
				<td>${li.getDesignation() }</td>
				<td>${li.getExperience() }</td>
				<td>${li.getMobileNumber() }</td>
				<td>${li.getDOB() }</td>
				<td>${li.getDateOfJoining() }</td>
				<td>${li.getGender() }</td>
				<td>${li.getMarriedStatus() }</td>
				<td>${li.getCountry() }</td>
				<td>${li.getState() }</td>
				<td>${li.getCity() }</td>
				<td>${li.getPincode() }</td>
				<td><a href="/dccb/editemp/${li.empId }">Edit</a></td> 
				<td><a href="/dccb/deleteemp/${li.empId }">Delete</a></td> 
				</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
			
		<br> 		
				<!--  -->	
<!-- footer -->
<jsp:include page="foot.jsp"></jsp:include>
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