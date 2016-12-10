<?php
	class controller_users {

		public function __construct(){
				include(FUNCTIONS_USERS . "functions_users.inc.php");
				include (LIBS . 'password_compat-master/lib/password.php');
				include(UTILS . "upload.inc.php");
				// include LOG_DIR;
				$_SESSION['module'] = "users";
		}



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
    //////////////////end signin//////////////
}//End controller users
