#!/bin/bash
replace "http://localhost/repair_on_time/" "https://" -- ./modules/users/view/js/init.js
replace "http://localhost/repair_on_time/" "https://" -- ./modules/users/view/modal.html
replace "http://" "https://" -- ./paths.php
replace "/repair_on_time/" "/" -- ./paths.php
replace "/repair_on_time/modules/technicians/view/img/" "/modules/technicians/view/img/" -- ./modules/technicians/view/js/geolocator.js
replace "http://localhost/repair_on_time" "https://repairontime.tk" -- ./view/js/main.js
