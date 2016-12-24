$(document).ready(function () {
    /////**modal login*///
    // var modalbase = '<div class="modal fade" id="modalLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">' +
    //         '<div class="modal-dialog" role="document">' +
    //         '<div class="modal-content">' +
    //         '</div>' +
    //         '</div>' +
    //         '<div class="modal-footer">' +
    //         '<div class="8u 12u$(medium)">' +
    //         '<div class="copyright">' +
    //         '&copy; 2016 JoinElderly. All rights reserved.' +
    //         ' </div>' +
    //         '</div>' +
    //         '</div>' +
    //         '</div>';
    // var modalbase = '<div class="modal fade" id="modalLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
    // $("#LoginModal").append(modalbase);
    // $( ".modal-content" ).empty();
    ////**user menu*///
    var user = Tools.readCookie("user");
    if (user) {
        console.log(user); //
        user = user.split("|");
        $("#LogProf").html("<a href=" + amigable('?module=users&function=profile') + "><img id='menuImg' class='icon rounded' src='" + user[1] + "'\/>" + user[3] + "<\/a>");
        $("#LogProf").after("<li><a id='logout' href='#' >Log Out<\/a><\/li>");
        if ( (user[2] === "worker") || (user[2] === "client")  ) {
            $("#LogProf").before("<li><a href=" + amigable('?module=ofertas/') + ">My tickets<\/a><\/li>");
        } else if (user[2] === "admin") {
            $("#LogProf").before("<li><a href=" + amigable('?module=admin/') + ">Admin<\/a><\/li>");
        }
        // try{
            $("head").append("<script type='text/javascript' src='//repairontime.tk/modules/users/view/js/logout.js'><\/script>");
        // }
        // catch(ex){
        //   console.log(ex);
        // }
    }

    var url = window.location.href;
    url = url.split("/");
    if (url[5] === 'verify' && url[6].substring(0, 3) == 'Ver'){
      $("#alertbanner").html("<a href='#alertbanner' class='alertbanner'>Su email ha sido verificado, disfrute de nuestros servicios</div>");
      $("#alertbanner").addClass('active');
      $("#alertbanner").addClass('drop-notif-green');
      setTimeout(function(){
        $('.dropdown-notification').removeClass('active');
        $("#alertbanner").removeClass('drop-notif-green');
      }, 10000);
    }else if(url[6]==='503'){
      $("#alertbanner").html("<a href='#alertbanner' class='alertbanner alertbannerErr'>Hay un problema en la base de datos, inténtelo más tarde</div>");
      $("#alertbanner").addClass('active');
      $("#alertbanner").addClass('drop-notif-red');
      setTimeout(function(){
        $('.dropdown-notification').removeClass('active');
        $("#alertbanner").removeClass('drop-notif-red');
      }, 10000);
    }else if (url[5] === 'begin') {
        if (url[6] === 'reg'){
          $("#alertbanner").html("<a href='#alertbanner' class='alertbanner'>Se le ha enviado un email para verificar su cuenta</div>");
          $("#alertbanner").addClass('active');
          $("#alertbanner").addClass('drop-notif-green');
          setTimeout(function(){
            $('.dropdown-notification').removeClass('active');
            $("#alertbanner").removeClass('drop-notif-green');
          }, 10000);
        }else if (url[6] === 'rest'){
          $("#alertbanner").html("<a href='#alertbanner' class='alertbanner'>Se ha cambiado satisfactoriamente su contraseña</div>");
          $("#alertbanner").addClass('active');
          $("#alertbanner").addClass('drop-notif-green');
          setTimeout(function(){
            $('.dropdown-notification').removeClass('active');
            $("#alertbanner").removeClass('drop-notif-green');
          }, 10000);
        }
    } else if (url[5] === 'profile'){
        if (url[6] === 'done'){
            $("#alertbanner").html("<a href='#alertbanner' class='alertbanner'>Usuario correctamente actualizado</div>");
            $("#alertbanner").addClass('active');
            $("#alertbanner").addClass('drop-notif-green');
            setTimeout(function(){
              $('.dropdown-notification').removeClass('active');
              $("#alertbanner").removeClass('drop-notif-green');
            }, 10000);
        }
    }
});
