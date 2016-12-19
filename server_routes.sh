#!/bin/bash
replace "/repair_on_time/" "/" -- .htaccess
replace "http://localhost/repair_on_time/" "//repairontime.tk/" -- ./modules/users/view/js/init.js
replace "//localhost/repair_on_time/" "//repairontime.tk/" -- ./modules/users/view/modal.html
replace "http://" "https://" -- ./paths.php
replace "/repair_on_time/" "/" -- ./paths.php
replace "/repair_on_time/modules/technicians/view/img/" "/modules/technicians/view/img/" -- ./modules/technicians/view/js/geolocator.js
replace "http://localhost/repair_on_time" "//repairontime.tk" -- ./view/js/main.js
replace "if (url[5] === 'verify' && url[6].substring(0, 3) == 'Ver'){" "if (url[4] === 'verify' && url[5].substring(0, 2) == 'Ver'){" -- ./modules/users/view/js/init.js
replace "}else if(url[6]==='503'){" "}else if(url[5]==='503'){" -- ./modules/users/view/js/init.js
replace "}else if (url[5] === 'begin') {" "}else if (url[4] === 'begin') {" -- ./modules/users/view/js/init.js
replace "if (url[6] === 'reg'){" "if (url[5] === 'reg'){" -- ./modules/users/view/js/init.js
replace "}else if (url[6] === 'rest'){" "}else if (url[5] === 'rest'){" -- ./modules/users/view/js/init.js
replace "} else if (url[5] === 'profile'){" "} else if (url[4] === 'profile'){" -- ./modules/users/view/js/init.js
replace "if (url[6] === 'done')" "if (url[5] === 'done')" -- ./modules/users/view/js/init.js
mkdir -p log/general
touch ./log/general/Site_General_errors.log
chown -R $USER:www-data *
chmod 755 -R *
chmod 777 ./log/general/Site_General_errors.log
mv ./libs/PHPMailer_v5.1/docsini ./libs/PHPMailer_v5.1/docs.ini
echo "Faltan modificar los siguientes archivos:"
echo "./model/db.ini"
mv ./model/dbini ./model/db.ini
echo "./classes/email/email.ini"
mv ./classes/email/emailini ./classes/email/email.ini
