$(document).ready(start);

function start() {
    lat = Tools.readCookie("lat");
    lng = Tools.readCookie("lng");
    if (lat && lng) {
      var data = {"lat": lat, "lng": lng};
      var change_JSON = JSON.stringify(data);
    }

    // console.log(amigable("?module=technicians&function=maploader"));
    $.post(amigable("?module=technicians&function=maploader"), {value: change_JSON},

    function (response) {
      console.log(response);
        console.log(response.technicians);
        if (response.success) {
            // if (navigator.geolocation) {
            //     navigator.geolocation.getCurrentPosition(mostrarUbicacion);
                loadmap(response.technicians);
                loadtechnicians(response.technicians);
            // } else {
            //     alert("¡Error! Este navegador no soporta la Geolocalización.");
            // }
        } else {
            if (response.error == 503)
                window.location.href = amigable("?module=main&fn=begin&param=503");
        }
    }, "json").fail(function (xhr, textStatus, errorThrown) {
        // console.log(xhr.responseText);
        if (xhr.status === 0) {
            alert('Not connect: Verify Network.');
        } else if (xhr.status === 404) {
            alert('Requested page not found [404]');
        } else if (xhr.status === 500) {
            alert('Internal Server Error [500].');
        } else if (textStatus === 'parsererror') {
            alert('Requested JSON parse failed.');
        } else if (textStatus === 'timeout') {
            alert('Time out error.');
        } else if (textStatus === 'abort') {
            alert('Ajax request aborted.');
        } else {
            alert('Uncaught Error: ' + xhr.responseText);
        }
    });

}

function mostrarUbicacion(position) {
    var times = position.timestamp;
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    var altitud = position.coords.altitude;
    var exactitud = position.coords.accuracy;

    //setCookie("lat", latitud, 14);
    //setCookie("lon", longitud, 14);
    Tools.createCookie("lat", latitude, 1);
    Tools.createCookie("lng", longitude, 1);
}

function refrescarUbicacion() {
    navigator.geolocation.watchPosition(mostrarUbicacion);
}

function loadtechnicians(tech) {
    for (var i = 0; i < tech.length; i++) {
        var content = '<div class="of" id="' + tech[i].id + '">'+
                      '<div class="desc">' + tech[i].name +' '+ tech[i].surname1 + '</div>'+
                      '<div class="fecha"> Values: ' + '<p class="stars-container stars-'+ (tech[i].points/tech[i].val_qty) + '">★★★★★</p>'+ '</div>'+
                      '<div class="hora"> Schedule: ' + tech[i].time_start + ' - ' + tech[i].time_end + '</div>'+
                      '<div class="precio"><a href="#">+info</a>'+' '+'<a href="#">Contact</a></div></div>';
        $('.ofertas').append(content);
    }
}

/*Route to the marker used in the map*/
var MARKER_PATH = '/repair_on_time/modules/technicians/view/img/';
function marcar(map, tech) {
    var markerIcon = MARKER_PATH + 'location.png';
    var latlon = new google.maps.LatLng(tech.latitude, tech.longitude);
    var marker = new google.maps.Marker({
      position: latlon,
      icon: markerIcon,
      map: map,
      title: tech.name + ' ' + tech.surname1,
      animation: google.maps.Animation.DROP
    });

    var infowindow = new google.maps.InfoWindow({
        content: '<h3 class="oferta_title">' + tech.name + ' ' + tech.surname1 + '</h3>'+
                 '<p class="stars-container stars-'+ (tech.points/tech.val_qty) + '">★★★★★</p>'+
                 '<p class="oferta_content">Schedule: ' + tech.time_start + ' - ' + tech.time_end + '</p>'+
                 '<p class="oferta_content"><a href="#">+info</a>'+' '+'<a href="#">Contact</a></p>'

    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map, marker);

        //acceder al dom del InfoWindow para mejorar su aspecto
        google.maps.event.addListener(infowindow, 'domready', function () {
            var iwOuter = $('.gm-style-iw');
            var iwCloser = iwOuter.next();
            var iwBackground = iwOuter.prev();

            iwBackground.children(':nth-child(2)').css({'display': 'none'});
            iwBackground.children(':nth-child(4)').css({'display': 'none'});
            //Lines commented to prevent the InfoWindow tail to move to the left
            // iwBackground.children(':nth-child(1)').attr('style', function (i, s) {
            //     return s + 'left: 76px !important;'
            // });
            // iwBackground.children(':nth-child(3)').attr('style', function (i, s) {
            //     return s + 'left: 76px !important;'
            // });
            iwBackground.children(':nth-child(3)').find('div').children().css({'box-shadow': 'rgba(72, 181, 233, 0.6) 0px 1px 6px', 'background-color': '#f5f5f5', 'z-index': '1'});

            iwCloser.css({
                opacity: '1',
                right: '18px', top: '3px',
                'border-radius': '13px', // circular effect
                'box-shadow': '0 0 5px #3990B9' // 3D effect to highlight the button
            });

            iwCloser.mouseout(function () {
                $(this).css({opacity: '1'});
            });
        });
    });
}

function loadmap(arrArguments) {
  // console.log("cargarmap");

    var x = document.getElementById("demo");
    navigator.geolocation.getCurrentPosition(showPosition, showError);

    function showPosition(position){
        var lat = position.coords.latitude;
        var lon = position.coords.longitude;
        var latlon = new google.maps.LatLng(lat, lon);
        var mapholder = document.getElementById('mapholder');
        //mapholder.style.height = '550px';
        //mapholder.style.width = '900px';
        var myOptions = {
            center: latlon,
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: false,
            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL}
        };
        var map = new google.maps.Map(document.getElementById("mapholder"), myOptions);
        // var marker = new google.maps.Marker({position: latlon, map: map, title: "You are here!"});

        for (var i = 0; i < arrArguments.length; i++){
            marcar(map, arrArguments[i]);
            // show_image(arrArguments.descripcion);
        }
    }
    function showError(error){
        switch (error.code){
            case error.PERMISSION_DENIED:
                x.innerHTML = "Denegada la peticion de Geolocalización en el navegador.";
                break;
            case error.POSITION_UNAVAILABLE:
                x.innerHTML = "La información de la localización no esta disponible.";
                break;
            case error.TIMEOUT:
                x.innerHTML = "El tiempo de petición ha expirado.";
                break;
            case error.UNKNOWN_ERROR:
                x.innerHTML = "Ha ocurrido un error desconocido.";
                break;
        }
    }
}

function show_image (number) {
    document.getElementsByName("stars").innerHTML = '';
    for (var i =0; i<number; i++){
        var img = document.createElement("img");
        img.height=10;
        img.src = "http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/512/star-full-icon.png";
       document.getElementById("stars").appendChild(img);
    }
}
