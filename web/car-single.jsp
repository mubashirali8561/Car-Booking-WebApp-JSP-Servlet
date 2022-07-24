<%@page import="java.util.ArrayList"%>
<%@page import="com.system.entities.Car"%>
<%@page import="com.system.dao.CarDao"%>
<%@page import="com.system.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
	 <%@include file="includes/nav.jsp" %>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Car details <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">Car Details</h1>
          </div>
        </div>
      </div>
    </section>
		

		<section class="ftco-section ftco-car-details">
      <div class="container">
           <%
               int id = Integer.parseInt(request.getParameter("id"));
        CarDao cardao = new CarDao(ConnectionProvider.getConnection());
        ArrayList<Car> list = cardao.getallCars(id);
        int i = 0;
        for(Car c:list)
        {    
        %>
      	<div class="row justify-content-center">
      		<div class="col-md-12">
      			<div class="car-details">
      				<div class="img rounded" style="background-image: url(images/<%= c.getCarimg() %>);"></div>
      				<div class="text text-center">
      					
      					<h2><%= c.getTitle() %></h2>
                                        <span class="subheading"><%= c.getDiscription() %></span>
      				</div>
      			</div>
      		</div>
      	</div>
      	<div class="row">
      		<div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-dashboard"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Mileage
		                	<span><%= c.getMileage()%></span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-pistons"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Transmission
		                	<span><%= c.getTransmission()%></span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-car-seat"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Seats
                                        <span><%= c.getSeats()%></span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-backpack"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Luggage
		                	<span><%= c.getLuggage()%></span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services">
              <div class="media-body py-md-4">
              	<div class="d-flex mb-3 align-items-center">
	              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-diesel"></span></div>
	              	<div class="text">
		                <h3 class="heading mb-0 pl-3">
		                	Fuel
                                        <span><%= c.getFuel()%></span>
		                </h3>
	                </div>
                </div>
              </div>
            </div>      
          </div>
      	</div>
      	<div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Features</a>
							    </li>
							    
							  </ul>
							</div>

						  <div class="tab-content" id="pills-tabContent">
						    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
						    	<div class="row">
						    		<div class="col-md-4">
						    			<ul class="features">
                                                                            <li class="<% if(c.getAirconditions().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getAirconditions().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Air Conditions</li>
                                                                            <li class="<% if(c.getChildSeat().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getChildSeat().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Child Seat</li>
                                                                            <li class="<% if(c.getGPS().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getGPS().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>GPS</li>
                                                                            <li class="<% if(c.getLuggage_tick().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getLuggage_tick().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Luggage</li>
                                                                            <li class="<% if(c.getMusic().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getMusic().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Music</li>
						    			
						    			</ul>
						    		</div>
						    		<div class="col-md-4">
						    			<ul class="features">
                                                                            <li class="<% if(c.getSeatBelt().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getSeatBelt().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Seat Belt</li>
                                                                            <li class="<% if(c.getSleepingBed().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getSleepingBed().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Sleeping Bed</li>
                                                                            <li class="<% if(c.getWater().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getWater().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Water</li>
                                                                            <li class="<% if(c.getBluetooth().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getBluetooth().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Bluetooth</li>
                                                                            <li class="<% if(c.getOnboardcomputer().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getOnboardcomputer().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Onboard computer</li>
                                                                            
						    			</ul>
						    		</div>
						    		<div class="col-md-4">
						    			<ul class="features">
                                                                            <li class="<% if(c.getAudioinput().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getAudioinput().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Audio input</li>
                                                                            <li class="<% if(c.getLong_Term_Trips().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getLong_Term_Trips().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Long Term Trips</li>
                                                                            <li class="<% if(c.getCarKit().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getCarKit().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Car Kit</li>
                                                                            <li class="<% if(c.getRemote_central_locking().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getRemote_central_locking().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Remote central locking</li>
                                                                            <li class="<% if(c.getClimatecontrol().equals("1")){%>check<%}else{%>remove<%} %>"><span class="ion-ios-<% if(c.getClimatecontrol().equals("1")){%>checkmark<%}else{%>close<%} %>"></span>Climate control</li>
                                                                            
						    			</ul>
						    		</div>
						    	</div>
						    </div>

						    

						   
						  </div>
						</div>
		      </div>
				</div>
      </div>
    </section>
<% } %>
    
    

    <%@include file="includes/footer.jsp" %>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>