<?php
function paint_template_error($message) {
    $log = log::getInstance();
    $log->add_log_general("error paint_template_error", "products", "response" . http_response_code()); //$text, $controller, $function
    $log->add_log_product("error paint_template_error", "", "products", "response" . http_response_code()); //$msg, $username = "", $controller, $function
    //$arrData = response_code(http_response_code());
    print ("<section id='error' class='container'>");
    print ("<div id='page'>");
    print ("<br><br><br><br>");
    print ("<div id='header' class='status".http_response_code()."'>");
    //https://es.wikipedia.org/wiki/Anexo:C%C3%B3digos_de_estado_HTTP
    //print("<h1>" . $message . "</h1>");
    if (isset($message) && !empty($message)) {
        print( '<h1>ERROR ' . http_response_code() . ' - ' . $message . '</h1>');
    }
    print("</div>");
    print ("<div id='content'>");
    print ("<h2>The following error occurred:</h2>");
    print ("<p>The requested URL was not found on this server.</p>");
    print ("<P>Please check the URL or contact the <!--WEBMASTER//-->webmaster<!--WEBMASTER//-->.</p>");
    print ("</div>");
    print ("<div id='footer'>");
    print ("<p>Powered by <a href='http://www.ispconfig.org'>ISPConfig</a></p>");
    print ("</div>");
    print ("</div>");
    print ("</section>");

}

function paint_template_products($arrData) {
    print ("<script type='text/javascript' src='".PRODUCTS_JS_PATH."modal_products.js'></script>");
    print('<section id="services" >');
    print ("<div class='container'>");

    print('<div class="table-display">');

    if (isset($arrData) && !empty($arrData)) {
        $i = 0;
        foreach ($arrData as $tecnico) {
            $i++;
            if (count($arrData) % 2 !== 0 && i >= count($arrData)){
                //print( '<div class="table-row">');
                print( '<div class="odd_prod">');
            }else {
                if ($i % 2 != 0)
                    print( '<div class="table-row">');
                else
                    print('<div class="table-separator"></div>');
            }
            print('<div class="table-cell">');


            print('<div class="media">');
            print('<div class="pull-left">');
            /*print('<img src="' . $tecnico['img_avatar'] . '" class="icon-md" height="80" width="80">');*/
            print('</div>');
            print('<div class="media-body">');
            print('<h3 class="media-heading">' . $tecnico['name'] . '</h3>');
            print('<p>' . $tecnico['phone'] . '</p>');
            print('<p>' . $tecnico['dni'] . '</p>');
            print('<h5> <strong>Puntos: ' . $tecnico['points'] . '</strong> </h5>');
            print("<div id='" . $tecnico['dni'] . "' class='tecnico_dni'> Read Details </div>");

            print('</div>');
            print('</div>');
            print('<br>');


            print('</div>');
            if (count($arrData) % 2 !== 0 && i >= count($arrData)){
                //print ('</div>');
                print( '</div>');
            } else {
                if ($i % 2 == 0)
                    print('</div> <br>');
            }
        }
    }
    print ("</div>");
    print ("</div>");
    print ("</section>");
}

function paint_template_search($message) {
    $log = log::getInstance();
    $log->add_log_general("error paint_template_search", "products", "response " . http_response_code()); //$text, $controller, $function
    $log->add_log_product("error paint_template_search", "", "products", "response " . http_response_code()); //$msg, $username = "", $controller, $function

    print ("<section> \n");
    print ("<div class='container'> \n");
    print ("<div class='row text-center pad-row'> \n");

    print ("<h2>" . $message . "</h2> \n");
    print ("<br><br><br><br> \n");

    print ("</div> \n");
    print ("</div> \n");
    print ("</section> \n");
}
