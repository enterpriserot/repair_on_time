<footer id="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-6 col-sm-3 column">
                <h4>Information</h4>
                <ul class="list-unstyled">
                    <li><a href="<?php amigable('?module=technicians&function=begin'); ?>">Tecnicos</a></li>
                    <li><a href="">Services</a></li>
                    <li><a href="">Benefits</a></li>
                    <li><a href="">Developers</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-sm-3 column">
                <h4>About</h4>
                <ul class="list-unstyled">
                    <li><a href="<?php amigable('?module=contact&function=view_contact'); ?>">Contact Us</a></li>
                    <li><a href="#">Delivery Information</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-3 column">
                <h4>Stay Posted</h4>
                <form>
                    <div class="form-group">
                      <input type="text" class="form-control" title="No spam, we promise!" placeholder="Tell us your email">
                    </div>
                    <div class="form-group">
                      <button class="btn btn-primary" data-toggle="modal" data-target="#alertModal" type="button">Subscribe for updates</button>
                    </div>
                </form>
            </div>
            <div class="col-xs-12 col-sm-3 text-right">
                <h4>Follow</h4>
                <ul class="list-inline">
                  <li><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                  <li><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
                  <li><a rel="nofollow" href="" title="Dribble"><i class="icon-lg ion-social-dribbble-outline"></i></a></li>
                </ul>
            </div>
        </div>
        <br/>
    </div>
</footer>
<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-body">
        <img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="img-responsive" />
        <p>
            <br/>
            <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
        </p>
      </div>
    </div>
    </div>
</div>
<!--Modal que apareix al fer click al about -->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <h2 class="text-center">Landing Zero Theme</h2>
        <h5 class="text-center">
            A free, responsive landing page theme built by BootstrapZero.
        </h5>
        <p class="text-justify">
            This is a single-page Bootstrap template with a sleek dark/grey color scheme, accent color and smooth scrolling.
            There are vertical content sections with subtle animations that are activated when scrolled into view using the jQuery WOW plugin. There is also a gallery with modals
            that work nicely to showcase your work portfolio. Other features include a contact form, email subscribe form, multi-column footer. Uses Questrial Google Font and Ionicons.
        </p>
        <p class="text-center"><a href="http://www.bootstrapzero.com">Download at BootstrapZero</a></p>
        <br/>
        <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
      </div>
    </div>
    </div>
</div>
<!--Modal que apareix al fer click al subscribe -->
<div id="alertModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-body">
        <h2 class="text-center">Nice Job!</h2>
        <p class="text-center">You clicked the button, but it doesn't actually go anywhere because this is only a demo.</p>
        <p class="text-center"><a href="http://www.bootstrapzero.com">Learn more at BootstrapZero</a></p>
        <br/>
        <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">OK <i class="ion-android-close"></i></button>
      </div>
    </div>
    </div>
</div>
<!--scripts loaded here from cdn for performance -->
<!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
<script src="<?php echo JS_PATH ?>scripts.js"></script>-->

<!--Añadido de vieja plantilla-->
<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
<!-- BOOTSTRAP SCRIPTS  -->
<script src="<?php echo PLUGINS_PATH ?>bootstrap.js"></script>
<!-- PRETTYPHOTO SCRIPTS  -->
<script src="<?php echo PLUGINS_PATH ?>jquery.prettyPhoto.js"></script>
<!-- CUSTOM SCRIPTS  -->
<script src="<?php echo JS_PATH ?>/custom.js"></script>
</body>
</html>
