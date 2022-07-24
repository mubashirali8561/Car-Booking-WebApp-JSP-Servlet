<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Map</title>
<!--google api-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASP9vWd3OTWFUDn6FoliMof9g8k3PVYds&libraries=places&callback=activatePlacesSearch"></script> 
<script>
var map;
//var myLatlng = new google.maps.LatLng(53.350140,-6.266155);
function initialize() {
var locations = [
      ['Fleet Street', 53.345852,-6.258641, 4], //locations save into the array named as locations
      ['Talbot Street', 53.350806,-6.254001, 5],
      ['Loftus Lane', 53.350740,-6.268380, 3],
      ['East Wall Road', 53.353636,-6.226937, 2],
      ['Rock Road', 53.304880,-6.187635, 1],
      ['Milltown Road', 53.308140,-6.254168, 6],
      ['Dolphin Road', 53.335325,-6.303219, 7]
    ];
//    google.maps.Map is a method developed by google
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 11, //zoom effect 11 is okay in our case
      center: new google.maps.LatLng(53.350140, -6.266155), //default location show on map which is dublin location
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    
    var infowindow = new google.maps.InfoWindow();

    var marker, i;
    
    for (i = 0; i < locations.length; i++) { //loop will run untill array have data  in our case ot runs 7 times.
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]), //marker place to the provide locations
        map: map,
        icon: {
    url: "https://img.icons8.com/android/2x/car.png", //icon for marker
//    url: "https://unpkg.com/leaflet@1.3.3/dist/images/marker-icon.png",
    labelOrigin: new google.maps.Point(75, 32),
    size: new google.maps.Size(45,45), // size for icon
    anchor: new google.maps.Point(16,32)
  }
      });
      
      google.maps.event.addListener(marker, 'click', (function(marker, i) { //when we click on marker it shows location name
        return function() {
          infowindow.setContent(locations[i][0]); //zero index is our location name
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
      
}

google.maps.event.addDomListener(window, 'load', initialize);//this function call which load map when page load.
</script>
</head>
<body>
    
     <div id="map" style="height:635px; width:100%;"></div> 
    <!--map show in side this div-->
</body>
</html>

