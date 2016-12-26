<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCviZ569vHIB8lmT5PlDENQ9eLHNpNBYtc&libraries=places" async defer></script>
<script src="<?php echo MAIN_JS_PATH ?>search.js"></script>
<header id="first">
    <div class="header-content">
        <div class="inner">
            <h1 class="cursive">Repair on Time</h1>
            <hr>
            <!--<h4>A free landing page theme with video background</h4>-->
            <section class="search">
              <input type="text" id="searchBox" name="search-box" class="search-box" autocomplete="on" placeholder="Search...">
              <input type="button" id="searchButton" name="search-button" class="btn btn-primary btn-xl" value="Search">
            </section>
            <hr>
            <a href="#video-background" id="toggleVideo" data-toggle="collapse" class="btn btn-primary btn-xl">Toggle Video</a> &nbsp; <a href="#one" class="btn btn-primary btn-xl page-scroll">Get Started</a>
        </div>
    </div>
    <video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="<?php echo IMG_PATH ?>static.jpg" id="video-background">
        <source src="<?php echo VIDEO_PATH ?>mp4/back.mp4" type="video/mp4">
        <source src="<?php echo VIDEO_PATH ?>ogv/back.ogv" type='video/ogg; codecs="theora, vorbis"' />
        <source src="<?php echo VIDEO_PATH ?>webm/back.webm" type="video/webm">
        Your browser does not support the video tag. I suggest you upgrade your browser.
    </video>
</header>
