<?php
	class controller_users {
		// echo "controller_users entra";

		public function __construct(){
			// echo FUNCTIONS_USERS . "functions_users.inc.php";
				include(FUNCTIONS_USERS . "functions_users.inc.php");
				include(LIBS . 'password_compat-master/lib/password.php');
				include(UTILS . "upload.inc.php");
				// include LOG_DIR;
				$_SESSION['module'] = "users";
		}

		//////////////begin signup////////////
		function signup() {
			loadView('modules/users/view/'.'signup.php');
		}

		public function signup_user() {
				$jsondata = array();
				$userJSON = json_decode($_POST['signup_user_json'], true);

				$result = validate_signupPHP($userJSON);
				if ($result['result']) {
					$avatar = get_gravatar($result['data']['email'], $s = 400, $d = 'identicon', $r = 'g', $img = false, $atts = array());
					$arrArgument = array(
							'email' => $result['data']['email'],
							'password' => password_hash($result['data']['password'], PASSWORD_BCRYPT),
							'type' => "client",
							'token' => "",
							'active' => "0",
							'avatar' => $avatar
					);


					/*CONTROL DE REGISTRO*/
					set_error_handler('ErrorHandler');
					try {
						//loadModel
							$arrValue = loadModel(MODEL_USERS, "users_model", "count", array('column' => array('email'), 'like' => array($arrArgument['email'])));
							if ($arrValue[0]['total'] == 1) {
								$arrValue = false;
								$typeErr = 'Email';
								$error = "Email ya registrado";
							}
					} catch (Exception $e) {
							$arrValue = false;
					}
					restore_error_handler();
          /* Fin de control de registro */

					if ($arrValue) {
                set_error_handler('ErrorHandler');
                try {
                    //loadModel
                    $arrArgument['token'] = "Ver" . md5(uniqid(rand(), true));
                    $arrValue = loadModel(MODEL_USERS, "users_model", "create_users", $arrArgument);
                } catch (Exception $e) {
                    $arrValue = false;
                }
                restore_error_handler();

                if ($arrValue) {
                    sendtoken($arrArgument, "alta");
                    $url = amigable('?module=main&function=begin&param=reg', true);
                    $jsondata["success"] = true;
                    $jsondata["redirect"] = $url;
                    echo json_encode($jsondata);
                    exit;
                } else {
                    $url = amigable('?module=main&function=begin&param=503', true);
                    $jsondata["success"] = true;
                    $jsondata["redirect"] = $url;
                    echo json_encode($jsondata);
                }
            } else {
                $jsondata["success"] = false;
                $jsondata['typeErr'] = $typeErr;
                $jsondata["error"] = $error;
                echo json_encode($jsondata);
            }

			} else {
            $jsondata["success"] = false;
            $jsondata['data'] = $result;
            echo json_encode($jsondata);
        }
		}

		function verify() {
        if (substr($_GET['param'], 0, 3) == "Ver") {
            $arrArgument = array(
                'column' => array('token'),
                'like' => array($_GET['param']),
                'field' => array('active'),
                'new' => array('1')
            );

            set_error_handler('ErrorHandler');
            try {
                $value = loadModel(MODEL_USERS, "users_model", "update", $arrArgument);
            } catch (Exception $e) {
                $value = false;
            }
            restore_error_handler();

            if ($value) {
                loadView('modules/main/view/', 'main.php');
            } else {
                showErrorPage(1, "", 'HTTP/1.0 503 Service Unavailable', 503);
            }
        }
    }
		////////////////end signup////////////

		//////////////begin restore////////////
    function restore() {
        loadView('modules/users/view/', 'restore.php');
    }

		public function process_restore() {
        $result = array();
        if (isset($_POST['inputEmail'])) {
            $result = validatemail($_POST['inputEmail']);
            if ($result) {
                $column = array(
                    'email'
                );
                $like = array(
                    $_POST['inputEmail']
                );
                $field = array(
                    'token'
                );

                $token = "Cha" . md5(uniqid(rand(), true));
                $new = array(
                    $token
                );

                $arrArgument = array(
                    'column' => $column,
                    'like' => $like,
                    'field' => $field,
                    'new' => $new
                );
                $arrValue = loadModel(MODEL_USERS, "users_model", "count", $arrArgument);
                if ($arrValue[0]['total'] == 1) {
                    $arrValue = loadModel(MODEL_USERS, "users_model", "update", $arrArgument);
                    if ($arrValue) {
                        //////////////// Envio del correo al usuario
                        $arrArgument = array(
                            'token' => $token,
                            'email' => $_POST['inputEmail']
                        );
                        if (sendtoken($arrArgument, "modificacion"))
                            echo "Tu nueva contraseña ha sido enviada al email";
                        else
                            echo "Error en el servidor. Intentelo más tarde";
                    }
                } else {
                    echo "El email introducido no existe ";
                }
            } else {
                echo "El email no es válido";
            }
        }
    }///end process_restore////

		function changepass() {
        if (substr($_GET['param'], 0, 3) == "Cha") {
            loadView('modules/users/view/', 'changepass.php');
        } else {
            showErrorPage(1, "", 'HTTP/1.0 503 Service Unavailable', 503);
        }
    }

		function update_pass() {
        $jsondata = array();
        $pass = json_decode($_POST['passw'], true);
        $arrArgument = array(
            'column' => array('token'),
            'like' => array($pass['token']),
            'field' => array('password'),
            'new' => array(password_hash($pass['password'], PASSWORD_BCRYPT))
        );

        set_error_handler('ErrorHandler');
        try {
            $value = loadModel(MODEL_USERS, "users_model", "update", $arrArgument);
        } catch (Exception $e) {
            $value = false;
        }
        restore_error_handler();

        if ($value) {
            $url = amigable('?module=main&function=begin&param=rest', true);
            $jsondata["success"] = true;
            $jsondata["redirect"] = $url;
            echo json_encode($jsondata);
            exit;
        } else {
            $url = amigable('?module=main&function=begin&param=503', true);
            $jsondata["success"] = true;
            $jsondata["redirect"] = $url;
            echo json_encode($jsondata);
            exit;
        }
    }
    ////////////////////end restore/////////////////


		/////////////////////begin signin/////////////
    public function login() {
        $user = json_decode($_POST['login_json'], true);
				// $pass = password_hash($user['pass'],PASSWORD_BCRYPT);
				// echo json_encode($pass);
				//pass: 123456 equivale: $2y$10$Eneiw4czC28zpyn3UkysLeVKzoZQJynDp0yfXELQb8jfXiC2O1t02

				// $password = password_hash("123456", PASSWORD_BCRYPT);
				// echo json_encode($password);
				// exit;

				$column = array(
            'email'
        );
        $like = array(
            $user['email']
        );

        $arrArgument = array(
            'column' => $column,
            'like' => $like,
            'field' => array('password')
        );

				set_error_handler('ErrorHandler');
        try {
					  //loadModel
						$arrValue = loadModel(MODEL_USERS, "users_model", "select", $arrArgument);
						// echo json_encode($arrValue);
						// exit;
            $arrValue = password_verify($user['pass'], $arrValue[0]['password']);
        } catch (Exception $e) {
            $arrValue = "error";
        }
        restore_error_handler();

        if ($arrValue !== "error") {
            if ($arrValue) { //OK
                set_error_handler('ErrorHandler');
                try {
                    $arrArgument = array(
                        'column' => array("email", "active"),
                        'like' => array($user['email'], "1")
                    );
                    $arrValue = loadModel(MODEL_USERS, "users_model", "count", $arrArgument);
										// echo json_encode($arrValue[0]);
										// exit;
                    if ($arrValue[0]["total"] == 1) {
                        $arrArgument = array(
                            'column' => array("email"),
                            'like' => array($user['email']),
                            'field' => array('*')
                        );
                        $user = loadModel(MODEL_USERS, "users_model", "select", $arrArgument);
                        echo json_encode($user);
                        exit();
                    } else {
                        $value = array(
                            "error" => true,
                            "data" => "User not activaterd, review your email please"
                        );
                        echo json_encode($value);
                        exit();
                    }
                } catch (Exception $e) {
                    $value = array(
                        "error" => true,
                        "data" => 503
                    );
                    echo json_encode($value);
                }
            } else {
                $value = array(
                    "error" => true,
                    "data" => "User and password doesn't match"
                );
                echo json_encode($value);
            }
        } else {
            $value = array(
                "error" => true,
                "data" => 503
            );
            echo json_encode($value);
        }
    }
    ////////////////end signin//////////////
}//End controller users
