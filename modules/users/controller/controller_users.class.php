<?php
	class controller_users {

		public function __construct(){
				include(FUNCTIONS_USERS . "functions_users.inc.php");
				include (LIBS . 'password_compat-master/lib/password.php');
				include(UTILS . "upload.inc.php");
				// include LOG_DIR;
				$_SESSION['module'] = "users";
		}

		function signup() {
			loadView('modules/users/view/'.'signup.php');
		}

		public function signup_user() {
				$jsondata = array();
				$userJSON = json_decode($_POST['signup_user_json'], true);

				$result = validate_user($userJSON);
				if ($result['result']) {
					$avatar = get_gravatar($result['email'], $s = 400,
					 $d = 'identicon', $r = 'g', $img = false, $atts = array());
					$arrArgument = array(
							'email' => $result['data']['email'],
							'password' => password_hash($result['data']['password'], PASSWORD_BCRYPT),
							'type' => "client",
							'token' => "",
							'activo' => false
					);

					/*CONTROL DE REGISTRO*/
					set_error_handler('ErrorHandler');
					try {
						//loadModel
							$arrValue = loadModel(MODEL_USERS, "users_model", "count",
							array('column' => array('email'), 'like' => array($arrArgument['usuario']));

							if ($arrValue[0]['total'] == 1) {
									$arrValue = false;

							}
					} catch (Exception $e) {

					}

				}
		}

  }//End controller users
