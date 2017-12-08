<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<script type="text/javascript" src="js/location.js"></script>
	<jsp:include page="/links.jsp"></jsp:include>
	<title>Update Employee</title>
<script type="text/javascript" src="js/location.js"></script>

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
			<a href="admin"><!--<i class="fa fa-inr" aria-hidden="true"></i>--><span>Employee Update</span></a>
			</div>
		<!-- //Top-Bar -->
		<div class="container">
            <form class="form-horizontal" role="form" action="/dccb/empupdatesave">
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Employee Id</label>
                    <div class="col-sm-9">
                        <input value="${emp.empId }" type="text" placeholder="" name="EmpId" class="form-control" disabled="disabled"><input value="${emp.empId }" type="hidden" placeholder="" name="EmpId" class="form-control" autofocus>
                       
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input value="${emp.name }" type="text" placeholder="Full Name" name="Name" class="form-control" autofocus>
                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="FatherName" class="col-sm-3 control-label">Father Name</label>
                    <div class="col-sm-9">
                        <input value="${emp.fatherName }" type="text"  placeholder="FatherName" name="FatherName" class="form-control" autofocus>
                      </div>
                </div>
               <div class="form-group">
                    <label for="PFAccountNumber" class="col-sm-3 control-label">PF Account Number</label>
                    <div class="col-sm-9">
                        <input value="${emp.PFAccNo }" type="text" id="PFAccountNumber" placeholder="PFAccountNumber" name="PFAccNo" class="form-control" autofocus>
                      </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input value="${emp.email }" type="email" id="email" placeholder="Email" name="Email" class="form-control">
                    </div>
                </div>
                
              <div class="form-group">
                    <label for="Designation" class="col-sm-3 control-label">Designation</label>
                    <div class="col-sm-9">
                        <input value="${emp.designation }" type="text" id="Designation" placeholder="Designation" name="Designation" class="form-control" autofocus>
                      </div>
                </div>
                
                 <div class="form-group">
                    <label for="Experience" class="col-sm-3 control-label">Experience</label>
                    <div class="col-sm-9">
                        <input type="text" value="${emp.experience }" id="Experience" placeholder="Experience" name="Experience" class="form-control" autofocus>
                      </div>
                </div>
                
                  <div class="form-group">
                    <label for="MobileNumber" class="col-sm-3 control-label">Mobile Number</label>
                    <div class="col-sm-9">
                        <input value="${emp.mobileNumber }" type="text" id="MobileNumber" placeholder="MobileNumber" name="MobileNumber" class="form-control" autofocus>
                      </div>
                </div>
                
               
                   <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input value="${emp.DOB }" type="date" id="birthDate" name="DOB" class="form-control">
                    </div>
                </div>
              <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Joining</label>
                    <div class="col-sm-9">
                        <input  value="${emp.dateOfJoining }" type="date" id="birthDate" name="DateOfJoining" class="form-control">
                    </div>
                </div>
                
                 <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                <c:if test="${emp.gender=='Female' }">
                                    <input type="radio" id="femaleRadio" checked="checked" name="Gender" value="Female" >Female
                                 </c:if>
                                 <c:if test="${emp.gender!='Female' }">
                                    <input type="radio" id="femaleRadio" name="Gender" value="Female" >Female
                                 </c:if>
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                <c:if test="${emp.gender=='Male' }">
                                    <input type="radio" id="maleRadio" checked="checked" name="Gender" value="Male" >Male
                                 </c:if>
                                 <c:if test="${emp.gender!='Male' }">
                                    <input type="radio" id="maleRadio" name="Gender" value="Male" >Male
                                 </c:if>
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                <c:if test="${emp.gender=='Unknown' }">
                                    <input type="radio" id="unknownRadio" checked="checked" name="Gender" value="Unknown" >Unknown
                                 </c:if>
                                 <c:if test="${emp.gender!='Unknown' }">
                                    <input type="radio" id="unknownRadio" name="Gender" value="Unknown" >Unknown
                                 </c:if>
                                </label>
                            </div>
                        </div>
                    </div>
                </div> 
                
                
                 <div class="form-group">
                    <label for="MarriedStatus" class="col-sm-3 control-label">Married Status</label>
                    <div class="col-sm-9">
                        <select id="MarriedStatus" name="MarriedStatus" class="form-control" >
                            <c:if test="${emp.marriedStatus =='Married' }">
                            <option value="Married" selected="selected">Married</option>
                            <option value="Unmarried">Unmarried</option>
                           </c:if>
                           <c:if test="${emp.marriedStatus =='Unmarried' }">
                            <option value="Married">Married</option>
                            <option value="Unmarried" selected="selected">Unmarried</option>
                           </c:if>
                           <c:if test="${emp.marriedStatus ==null }">
                            <option value="Married">Married</option>
                            <option value="Unmarried">Unmarried</option>
                           </c:if>                           
                        </select>
                    </div>
                </div> 
              
                
                  <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country2" name="country" class="form-control"> 						</select>
                        
                        
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
                        <select id="state" name="state" class="form-control"></select>
     
						<script language="javascript">
            				populateCountries("country", "state");
        				</script>     	    
     
                    </div>
                </div> 
                
                 <div class="form-group">
                    <label for="City" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-9">
                        <select id="City" name="City" class="form-control">
                            <option value="satara">Satara</option>
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
                        <input value="${emp.pincode }" type="text" id="Pincode" placeholder="Pincode" name="Pincode" class="form-control" autofocus>
                      </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
              	<button type="submit" class="btn btn-primary btn-block">Update</button>
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