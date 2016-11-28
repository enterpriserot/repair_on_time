<!--<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true"></script>-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCviZ569vHIB8lmT5PlDENQ9eLHNpNBYtc" async defer></script>

<script src="<?php echo TECHNICIANS_JS_PATH ?>geolocator.js"></script>

<section id="main" class="wrapper">
    <div class="container">

        <header class="major">
            <h2>Technicians</h2>
            <p>Here you can find a technicians near to you</p>
        </header>

        <div class="image fit">
            <div id='ubicacion'></div>
            <!-- Se escribe un mapa con la localizacion anterior-->
            <div id="demo"></div>
            <div id="mapholder"></div>
            <div class="ofertas"></div>
        </div>

    </div>
    <br/><br/><br/>
</section>
