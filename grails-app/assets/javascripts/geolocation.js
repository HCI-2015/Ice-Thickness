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

        document.getElementById('lat').value = latitude;
        document.getElementById('long').value = longitude;
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

        var marker = new google.maps.Marker({
            map:map,
            position:coordinates,
            draggable: false,
            animation: google.maps.Animation.DROP
        });
        //Add listener
        google.maps.event.addListener(map, "click", function (event) {

            //Delete previous marker when click on the map
            marker.setMap(null);

            latitude = event.latLng.lat();
             longitude = event.latLng.lng();

            document.getElementById('lat').value = latitude;
            document.getElementById('long').value = longitude;
            console.log( latitude + ', ' + longitude );



            var placeMarker = function (location) {


              marker = new google.maps.Marker({
                    position: location,
                    draggable: false,
                    animation: google.maps.Animation.DROP

                });

                marker.setMap(map);
            };
            placeMarker(event.latLng);

        });//end addListener



    };

    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    };

    //outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}