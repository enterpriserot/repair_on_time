<?php
class controller_technicians {
    function __construct() {}

    function begin() {
        loadView('modules/technicians/view/', 'main.php');
    }

    function maploader() {
      // echo json_encode(MODEL_TECHNICIANS);
      // exit;

      $location = json_decode($_POST['value'], true);
      $arrArgument = array(
          'latitude' => $location['lat'],
          'longitude' => $location['lng']
      );

      // echo json_encode($arrArgument);
      // exit;

        set_error_handler('ErrorHandler');
        $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "count_near", $arrArgument);
        if ($arrValue) {
          echo json_encode("hola");
          exit;
        }
        try {

            // $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));
            // $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select_near", $arrArgument);

        } catch (Exception $e) {
            $arrValue = false;
        }
        restore_error_handler();
        // if ($arrValue !== "error") {
        echo json_encode($arrValue);
        exit;
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
