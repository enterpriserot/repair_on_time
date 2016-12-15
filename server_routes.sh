#!/bin/bash
replace "/repair_on_time/" "/" -- .htaccess
replace "http://localhost/repair_on_time/" "//repairontime.tk/" -- ./modules/users/view/js/init.js
replace "//localhost/repair_on_time/" "//repairontime.tk/" -- ./modules/users/view/modal.html
replace "http://" "https://" -- ./paths.php
replace "/repair_on_time/" "/" -- ./paths.php
replace "/repair_on_time/modules/technicians/view/img/" "/modules/technicians/view/img/" -- ./modules/technicians/view/js/geolocator.js
replace "http://localhost/repair_on_time" "//repairontime.tk" -- ./view/js/main.js
mkdir -p log/general
touch ./log/general/Site_General_errors.log
chown -R $USER:www-data *
chmod 755 -R *
chmod 777 ./log/general/Site_General_errors.log
echo "Faltan modificar los siguientes archivos:"
echo "./model/db.ini"
mv ./model/dbini ./model/db.ini
echo "./classes/email/email.ini"
mv ./classes/email/emailini ./classes/email/email.ini
echo "./libs/PHPMailer_v5.1"
mv ./libs/PHPMailer_v5.1/docsini ./libs/PHPMailer_v5.1/docs.ini
