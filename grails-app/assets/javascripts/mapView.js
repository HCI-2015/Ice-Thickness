/**
 * Created by Mitch on 3/25/2015.
 */
function showMeasurement() {
    var outputLatLong = document.getElementById("latlong-out");
    var outputMap = document.getElementById("map-canvas");
    //var Marker=measurmentJs

    if (!navigator.geolocation){
        outputLatLong.innerHTML = "<p>Geolocation is not supported by your browser</p>";
        return;
    }

    function success(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;


      //  outputLatLong.innerHTML = Marker.value;

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
        var contentString = "<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large </p>";


        var marker = new google.maps.Marker(markerOptions);

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        google.maps.event.addListener(marker, 'click',function(){
            infowindow.open(map,marker);
        });


    };

    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    };

    //outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}
