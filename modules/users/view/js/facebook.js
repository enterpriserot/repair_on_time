$(document).ready(function () {
    $("#fb").click(function () {
        Login();
    });
});

window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '679649702209590', // App ID
		      // channelUrl : 'https://repairontime.tk/channel.html', // Channel File
          channelUrl: '//connect.facebook.net/en_US/all.js', // Channel File
		      status     : true, // check login status
		      cookie     : true, // enable cookies to allow the server to access the session
		      xfbml      : true  // parse XFBML
		    });

			FB.Event.subscribe('auth.authResponseChange', function(response) {
			 	if (response.status === 'connected') {
			  		// document.getElementById("message").innerHTML +=  "<br>Connected to Facebook";
			  		//SUCCESS
			  	}else if (response.status === 'not_authorized') {
			    	// document.getElementById("message").innerHTML +=  "<br>Failed to Connect";
					//FAILED
			    } else {
			    	// document.getElementById("message").innerHTML +=  "<br>Logged Out";
			    	//UNKNOWN ERROR
			    }
			});
		};

function Login(){
			FB.login(function(response) {
			   if (response.authResponse) {
			    	getUserInfo();
	  			} else {
	  	    	 console.log('User cancelled login or did not fully authorize');
	   			}
			 },{scope: 'email,user_photos,user_videos'});
}

function getUserInfo() {
  FB.api('/me', function (response) {
  FB.api('/me', {fields: 'id, first_name, last_name, email'},
  function (response) {
      var data = {"email": response.id, "name": response.first_name, "surnames": response.last_name};
      console.log(data);
      var datos_social = JSON.stringify(data);

      $.post(amigable('?module=users&function=social_signin'), {user: datos_social},
      function (response) {
        console.log(response);
        console.log(response[0]);
        console.log("dins function");
        if (!response.error) {
          console.log("dins !response error");

            Tools.createCookie("user", response[0]['email'] + "|" + response[0]['avatar'] + "|" + response[0]['type'] + "|" + response[0]['name'], 1);

              window.location.href = amigable("?module=main/");
              // window.location.href = '//repairontime.tk';
          } else {
              if (response.datos == 503){
                console.log("dins 503");
                  window.location.href = amigable("?module=main&fn=begin&param=503");
              }
          }
      }, "json").fail(function (xhr, textStatus, errorThrown) {
        console.log(xhr);
        console.log(xhr.status);
        console.log(textStatus);
        console.log(errorThrown);
          console.log(xhr.responseText);
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
  );
});
}

function getPhoto(){
		  FB.api('/me/picture?type=normal', function(response) {
			  var str="<br/><b>Pic</b> : <img src='"+response.data.url+"'/>";
		  	  document.getElementById("status").innerHTML+=str;
	    	});
}

function Logout(){
    FB.logout(function () {
      document.location.reload();
      Tools.eraseCookie("user");
      window.location.href = amigable("?module=main");
  });
  }

	  // Load the SDK asynchronously
	  (function(d){
	     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement('script'); js.id = id; js.async = true;
	     js.src = "//connect.facebook.net/en_US/all.js";
	     ref.parentNode.insertBefore(js, ref);
	   }(document));
