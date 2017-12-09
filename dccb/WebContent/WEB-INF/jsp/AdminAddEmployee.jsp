<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="js/location.js"></script>

<!-- Head -->
<head>
<title>Add Employee</title>
<script type="text/javascript" src="js/location.js"></script>
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
			<a href="admin"><!--<i class="fa fa-inr" aria-hidden="true"></i>--><span>Registration Form</span></a>
			</div>
		<!-- //Top-Bar -->
		<div class="container">
            <form class="form-horizontal" role="form" action="/dccb/empsavee">
                
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="Full Name" name="Name" class="form-control" pattern="^[a-zA-Z\s]+$" minlength="2" required autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="FatherName" class="col-sm-3 control-label">Father Name</label>
                    <div class="col-sm-9">
                        <input type="text"  placeholder="FatherName" name="FatherName" class="form-control" pattern="^[a-zA-Z\s]+$" minlength="2" required>
                      </div>
                </div>
               <div class="form-group">
                    <label for="PFAccountNumber" class="col-sm-3 control-label">PF Account Number</label>
                    <div class="col-sm-9">
                        <input type="text" id="PFAccountNumber" placeholder="PFAccountNumber" name="PFAccNo" class="form-control" pattern=^[1-9][0-9]{9}$ required>
                      </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" name="email" placeholder="EmailId" class="form-control" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required/>
                    </div>
                </div>
                
              <!-- <div class="form-group">
                    <label for="Designation" class="col-sm-3 control-label">Designation</label>
                    <div class="col-sm-9">
                        <input type="text" id="Designation" placeholder="Designation"  name="Designation" class="form-control" pattern="^[a-zA-Z\s]+$" minlength="1" required>
                      </div>
                </div>
               -->
               
               <div class="form-group">
                    <label for="Designation" class="col-sm-3 control-label">Designation</label>
                    <div class="col-sm-9">
                        <select id="Designation" name="Designation" class="form-control" required>
                        			<c:forEach items="${desiList}" var="li">  
      								<option value="${li.designation}">${li.designation}</option>  
  									</c:forEach> 
                        </select>
                    </div>
                </div> 
               
                 
                 <div class="form-group">
                    <label for="Experience" class="col-sm-3 control-label">Experience</label>
                    <div class="col-sm-9">
                        <input type="text" id="Experience" placeholder="Experience" name="Experience" class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{5,1}$" required>
                      </div>
                </div>
                
                  <div class="form-group">
                    <label for="MobileNumber" class="col-sm-3 control-label">Mobile Number</label>
                    <div class="col-sm-9">
                        <input type="text" id="MobileNumber" placeholder="MobileNumber" name="MobileNumber" class="form-control" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" required>
                      </div>
                </div>
                
               
                   <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" name="DOB" class="form-control" required="required">
                    </div>
                </div>
                
              <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Joining</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" name="DateOfJoining" class="form-control" required="required">
                    </div>
                </div>
                
                 <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleRadio" name="Gender" value="Female" required="required">Female
								</label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
									<input type="radio" id="maleRadio" name="Gender" value="Male" required="required">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="uncknownRadio" name="Gender" value="Unknown" required="required">Unknown
                                </label>
                            </div>
                        </div>
                    </div>
                </div> 
                
                
                 <div class="form-group">
                    <label for="MarriedStatus" class="col-sm-3 control-label">Married Status</label>
                    <div class="col-sm-9">
                        <select id="MarriedStatus" name="MarriedStatus" class="form-control" required>
                        	<option value="">Select Married Status</option>
                            <option>Married</option>
                            <option>Unmarried</option>
                            <option>Other</option>
                        </select>
                    </div>
                </div> 
              
                
                  <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country2" name="country" class="form-control" required> 						</select>
                        
                        
<!--         				<select id="country" name="country" class="form-control"></select>
 -->        				
        				<script language="javascript">	
        					populateCountries("country2", "state");
        				</script>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="State" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-9">
                        <select id="state" name="state" class="form-control" required></select>
     
						<script language="javascript">
            				populateCountries("country", "state");
        				</script>     	    
     
                    </div>
                </div> 
                
                 <div class="form-group">
                    <label for="City" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-9">
                        <select id="City" name="City" class="form-control" required>
                           <option value="">Select City</option>
                            <option>Satara</option>
                            <option>Pune</option>
                            <option>Mumbai</option>
                            <option>Amravti</option>
                            <option>Kolhapur</option>
                            <option>Sangli</option>
                            <option>Pandharpur</option>
                            <option>Akola</option>
                        </select>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="Pincode" class="col-sm-3 control-label">Pincode</label>
                    <div class="col-sm-9">
                        <input type="text" id="Pincode" placeholder="Pincode" name="Pincode" class="form-control" pattern=^[1-9][0-9]{5}$ required>
                      </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
              	<button type="submit" class="btn btn-primary btn-block">Register</button>
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
   <p> © 2017 CosMos Co-operative Bank. All rights reserved | Design by Ample Softech </p>
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