
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>    
    function activatePlacesSearch() {
      var input1 = document.getElementById('project-location-input1');// get value from pick up location field
      var input2 = document.getElementById('project-location-input2');// get value from drop off location field
      var location = {lat: 53.2910591, lng: -6.1823276};
      var radius = 1000;
      var circle = new google.maps.Circle({
        center: location,
        radius: radius
      });//googl code
      var autocomplete1 = new google.maps.places.Autocomplete(input1, {bounds: circle.getBounds()});//this function fatch location for pick up location
      var autocomplete2 = new google.maps.places.Autocomplete(input2, {bounds: circle.getBounds()});//this function fatch location for drop off location
      google.maps.event.addListener(autocomplete1, 'place_changed', function(e) {//event call by javascript when we lick on pick up location field
          const place1 = autocomplete.getPlace();
          console.log(place1['formatted_address']);
      });
      google.maps.event.addListener(autocomplete2, 'place_changed', function(e) {//event call by javascript when we lick on drop off location field
          const place2 = autocomplete.getPlace();
          console.log(place2['formatted_address']);
      });

    }
$(function(){
    var dtToday = new Date();

    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var maxDate = year + '-' + month + '-' + day;
    $('#txtDate1').attr('min', maxDate);
    $('#txtDate2').attr('min', maxDate);
    
});
</script>
    </head>
    <body>
        <section class="ftco-section ftco-no-pt bg-light">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-12	featured-top">
    				<div class="row no-gutters">
	  					<div class="col-md-4 d-flex align-items-center">
	  						<form action="../BookCar" method="POST" class="request-form ftco-animate bg-primary">
		          		<h2>Make your trip</h2>
			    				<div class="form-group">
			    					<label for="" class="label">Pick-up location</label>
			    					<input type="text" id="project-location-input1" name="pulocation" class="form-control" placeholder="City, Airport, Station, etc">
			    				</div>
			    				<div class="form-group">
			    					<label for="" class="label">Drop-off location</label>
			    					<input type="text"  id="project-location-input2" name="dolocation" class="form-control" placeholder="City, Airport, Station, etc">
			    				</div>
			    				<div class="d-flex">
			    					<div class="form-group mr-2">
			                <label for="" class="label">Pick-up date</label>
                                        <input type="date" id="txtDate1" class="form-control" name="pudate"  placeholder="Date">
			              </div>
			              <div class="form-group ml-2">
			                <label for="" class="label">Drop-off date</label>
                                        <input type="date" id="txtDate2" class="form-control" name="dodate" placeholder="Date">
			              </div>
		              </div>
		              <div class="form-group">
		                <label for="" class="label">Pick-up time</label>
		                <input type="text" class="form-control" name="putime" id="time_pick"  placeholder = "Time" />
		              </div>
			            <div class="form-group">
			              <input type="submit" value="Rent A Car Now" class="btn btn-secondary py-3 px-4">
			            </div>
			    			</form>
	  					</div>
	  					<div class="col-md-8 d-flex align-items-center">
	  						<div class="services-wrap rounded-right w-100">
	  							<h3 class="heading-section mb-4">Better Way to Rent Your Perfect Cars</h3>
	  							<div class="row d-flex mb-4">
					          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
					            <div class="services w-100 text-center">
				              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
				              	<div class="text w-100">
					                <h3 class="heading mb-2">Choose Your Pickup Location</h3>
				                </div>
					            </div>      
					          </div>
					          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
					            <div class="services w-100 text-center">
				              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-handshake"></span></div>
				              	<div class="text w-100">
					                <h3 class="heading mb-2">Select the Best Deal</h3>
					              </div>
					            </div>      
					          </div>
					          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
					            <div class="services w-100 text-center">
				              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-rent"></span></div>
				              	<div class="text w-100">
					                <h3 class="heading mb-2">Reserve Your Rental Car</h3>
					              </div>
					            </div>      
					          </div>
					        </div>
					        <p class="btn btn-primary py-3 px-4">Reserve Your Perfect Car</p>
	  						</div>
	  					</div>
	  				</div>
				</div>
  		</div>
    </section>
        
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASP9vWd3OTWFUDn6FoliMof9g8k3PVYds&libraries=places&callback=activatePlacesSearch"
        async defer></script>
    </body>
</html>
