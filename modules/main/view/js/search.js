$(document).ready(initialize);

  function initialize() {
        var input = document.getElementById('searchBox');
        var autocomplete = new google.maps.places.Autocomplete(input);
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
            var place = autocomplete.getPlace();
            var lat = place.geometry.location.lat();
            var lng = place.geometry.location.lng();
            // var data = {"lat": lat, "lng": lng};

            Tools.createCookie("lat", lat, 1);
            Tools.createCookie("lng", lng, 1);

        });
        $('#searchButton').click( function(){
          // $.post(amigable("?module=technicians&function=begin"), {localtion: location});

          window.location.href = amigable("?module=technicians&function=begin");
        });
    }


    // google.maps.event.addDomListener(window, 'load', initialize);

  // var options = {
  //   // types: ['geocode']
  //   types: ['(cities)']
  // };
  // autocomplete = new google.maps.places.Autocomplete($('#searchBox'), options);
  //
  // autocomplete.addListener('place_changed', onPlaceChanged);
  // // var searchBox = new google.maps.places.SearchBox($('#searchBox'));
  //
  // function onPlaceChanged() {
  //   var place = autocomplete.getPlace();
  //   console.log(place);
  //   // if (place.geometry) {
  //   //   search();
  //   // } else {
  //   //   document.getElementById('#searchBox').placeholder = 'Enter a city';
  //   // }
