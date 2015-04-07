/**
 * Created by Mitch on 3/25/2015.
 */
function geoFindMe() {
    var outputLatLong = document.getElementById("latlong-out");
    var outputMap = document.getElementById("map-canvas");

    if (!navigator.geolocation){
        outputLatLong.innerHTML = "<p>Geolocation is not supported by your browser</p>";
        return;
    }

    function success(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;

        //outputLatLong.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';

        // map image
        //var img = new Image();
        //img.src = "http://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
        //outputMap.appendChild(img);
        // end of map image
        var coordinates = new google.maps.LatLng(latitude, longitude);
        var mapOptions = {
            center: coordinates,
            zoom: 8
        };
        var map = new google.maps.Map(outputMap, mapOptions);

        // Set up and display the Marker
        var markerOptions = {
            map: map,
            position: coordinates,
            draggable: false,
            animation: google.maps.Animation.DROP
        };
        var maker = new google.maps.Marker(markerOptions);

    };

    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    };

    //outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}