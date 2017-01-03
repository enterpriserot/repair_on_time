<?php
class controller_technicians {
    function __construct() {}

    function begin() {
        loadView('modules/technicians/view/', 'main.php');
    }

    function maploader() {
      // echo json_encode($_COOKIE['lat']);
      // exit;

      if (isset($_POST['value'])) {
        // echo json_encode("values");
        // exit;
        $location = json_decode($_POST['value'], true);
        $arrArgument = array(
            'latitude' => $location['lat'],
            'longitude' => $location['lng']
        );

        set_error_handler('ErrorHandler');
        try {

            $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "count_near", $arrArgument);

            if ($arrValue[0]['total'] == 0) {

              $arrArguments['success'] = false;
              $arrArguments['error'] = 0;
              echo json_encode($arrArguments);
              exit;
            } else {
              $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select_near", $arrArgument);
            }

            // $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));

        } catch (Exception $e) {
            $arrValue = false;
        }

      } else {
        // echo json_encode("send");
        // exit;

        set_error_handler('ErrorHandler');
        try {

            $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));
            // $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));

        } catch (Exception $e) {
            $arrValue = false;
        }
      }

      // echo json_encode($arrArgument);
      // exit;

        // set_error_handler('ErrorHandler');

        // if ($arrValue) {
        //   echo json_encode("hola");
        //   exit;
        // }

        // try {
        //
        //     $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "count_near", $arrArgument);
        //
        //     if ($arrValue[0]['total'] == 0) {
        //
        //       $arrArguments['success'] = false;
        //       $arrArguments['error'] = 0;
        //       echo json_encode($arrArguments);
        //       exit;
        //     } else {
        //       $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select_near", $arrArgument);
        //     }
        //
        //     // $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));
        //
        // } catch (Exception $e) {
        //     $arrValue = false;
        // }
        restore_error_handler();
        // echo json_encode($arrValue);
        // exit;
          if ($arrValue) {
              $arrArguments['technicians'] = $arrValue;
              $arrArguments['success'] = true;
              echo json_encode($arrArguments);
          } else {
              $arrArguments['success'] = false;
              $arrArguments['error'] = 503;
              echo json_encode($arrArguments);
          }
        // }

    }
}
