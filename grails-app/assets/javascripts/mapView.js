/**
 * Created by Mitch on 3/25/2015.
 */
var map ;
var markers = [];
var infoWindows = [];
function showMeasurement(thick,latitude,longtitude) {

    var outputLatLong = document.getElementById("latlong-out");
    var outputMap = document.getElementById("map-canvas");
    //alert("s");
    //alert(coors);
    //var Marker=measurmentJs
    if (!navigator.geolocation) {
        outputLatLong.innerHTML = "<p>Geolocation is not supported by your browser</p>";
        return;
    }

    function success(position) {
        var lat = position.coords.latitude;
        var lon = position.coords.longitude;

        //  outputLatLong.innerHTML = Marker.value;
        // map image
        //var img = new Image();
        //img.src = "http://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
        //outputMap.appendChild(img);
        // end of map image

        var coordinates = new google.maps.LatLng(lat, lon);
        var markerLocation = new google.maps.LatLng(latitude, longtitude);

        var mapOptions = {
            center: coordinates,
            zoom: 8
        };

        map = new google.maps.Map(outputMap, mapOptions);

        var marker = new google.maps.Marker({
            position: markerLocation,
            draggable: false,
            animation: google.maps.Animation.DROP
        });
        markers.push(marker);
        var infowindow = new google.maps.InfoWindow({
                content: '<p style="color:black;"> Thickness '+thick+'</p>'
        });
        infoWindows.push(infowindow);

        var i;
        for (i=0;i<markers.length;i++){
            markers[i].setMap(map);
        }
        for (i=0;i<markers.length;i++) {
            google.maps.event.addListener(markers[i], "mouseover", function (innerKey) {

                return function() {
                    infoWindows[innerKey].open(map, markers[innerKey]);
                }
            }(i));
        }
    };




        function error(){

        };

    navigator.geolocation.getCurrentPosition(success, error);


}


