<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Map</title>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASP9vWd3OTWFUDn6FoliMof9g8k3PVYds&libraries=places&callback=activatePlacesSearch"></script> 
<script>
var map;
//var myLatlng = new google.maps.LatLng(53.350140,-6.266155);
function initialize() {
var locations = [
      ['Fleet Street', 53.345852,-6.258641, 4],
      ['Talbot Street', 53.350806,-6.254001, 5],
      ['Loftus Lane', 53.350740,-6.268380, 3],
      ['East Wall Road', 53.353636,-6.226937, 2],
      ['Rock Road', 53.304880,-6.187635, 1],
      ['Milltown Road', 53.308140,-6.254168, 6],
      ['Dolphin Road', 53.335325,-6.303219, 7]
    ];
    
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 11,
      center: new google.maps.LatLng(53.350140, -6.266155),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    
    var infowindow = new google.maps.InfoWindow();

    var marker, i;
    
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
        icon: {
    url: "https://img.icons8.com/android/2x/car.png",
//    url: "https://unpkg.com/leaflet@1.3.3/dist/images/marker-icon.png",
    labelOrigin: new google.maps.Point(75, 32),
    size: new google.maps.Size(45,45),
    anchor: new google.maps.Point(16,32)
  }
      });
      
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
      
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
    <!--map show in side this div-->
 <div id="map" style="height:635px; width:100%"></div> 
</body>
</html>