<?php
  class controller_products {

    public function __construct() {
      include(UTILS_PRODUCTS . "utils_list.inc.php");

      $_SESSION['module'] = "products";
    }

    public function list_products() {

      loadView('modules/products/view/', 'list_products.php');
    }

    public function autocomplete_products() {
      if ((isset($_POST["autocomplete"])) && ($_POST["autocomplete"] === "true")) {
          set_error_handler('ErrorHandler');
          $path_model = MODEL_PRODUCTS;
          try {

              $nameProducts = loadModel($path_model, "products_model", "select_column_products", "name");
          } catch (Exception $e) {
              showErrorPage(2, "ERROR - 503 BD", 'HTTP/1.0 503 Service Unavailable', 503);
          }
          restore_error_handler();

          if ($nameProducts) {
              $jsondata["nom_productos"] = $nameProducts;
              echo json_encode($jsondata);
              exit;
          } else {
              showErrorPage(2, "ERROR - 404 NO DATA", 'HTTP/1.0 404 Not Found', 404);
          }
      }
    }

    public function name_products() {
      if (isset($_POST["nom_product"])) {

          $result = filter_string($_POST["nom_product"]);
          if ($result['result']) {
              $criteria = $result['data'];
          } else {
              $criteria = '';
          }
          $path_model = MODEL_PRODUCTS;
          set_error_handler('ErrorHandler');
          try {

              $arrArgument = array(
                  "column" => "name",
                  "like" => $criteria
              );
              $producto = loadModel($path_model, "products_model", "select_like_products", $arrArgument);

              //throw new Exception(); //que entre en el catch
          } catch (Exception $e) {
              showErrorPage(2, "ERROR - 503 BD", 'HTTP/1.0 503 Service Unavailable', 503);
          }
      restore_error_handler();

      if ($producto) {
          $jsondata["product_autocomplete"] = $producto;
          echo json_encode($jsondata);
          exit;
      } else {

          showErrorPage(2, "ERROR - 404 NO DATA", 'HTTP/1.0 404 Not Found', 404);
      }
    }
  }

  public function count_products() {
    if (isset($_POST["count_product"])) {

        $result = filter_string($_POST["count_product"]);
        if ($result['result']) {
            $criteria = $result['data'];
        } else {
            $criteria = '';
        }
        $path_model = MODEL_PRODUCTS;
        set_error_handler('ErrorHandler');
        try {

            $arrArgument = array(
                "column" => "name",
                "like" => $criteria
            );
            $total_rows = loadModel($path_model, "products_model", "count_like_products", $arrArgument);
            //throw new Exception(); //que entre en el catch
        } catch (Exception $e) {
            showErrorPage(2, "ERROR - 503 BD", 'HTTP/1.0 503 Service Unavailable', 503);
        }
        restore_error_handler();

        if ($total_rows) {
            $jsondata["num_products"] = $total_rows[0]["total"];
            echo json_encode($jsondata);
            exit;
        } else {
            showErrorPage(2, "ERROR - 404 NO DATA", 'HTTP/1.0 404 Not Found', 404);
        }
    }
  }

  public function num_pages_products() {
    /*echo json_encode("hola");
    exit;*/
    if ((isset($_POST["num_pages"])) && ($_POST["num_pages"] === "true")) {

        if (isset($_POST['keyword'])) {
          $result = filter_string($_POST['keyword']);
          if ($result['result']) {
            $criteria = $result['data'];
          } else {
            $criteria = '';
          }
        } else {
          $criteria = '';
        }

        $item_per_page = 6;
        $path_model = MODEL_PRODUCTS;

        //change work error apache
        set_error_handler('ErrorHandler');

        try {
            $arrArgument = array(
                "column" => "name",
                "like" => $criteria
            );

            //throw new Exception();
            $arrValue = loadModel($path_model, "products_model", "count_like_products", $arrArgument);

            $get_total_rows = $arrValue[0]["total"]; //total records
            $pages = ceil($get_total_rows / $item_per_page); //break total records into pages
            //ceil redondea fracciones hacia arriba
        } catch (Exception $e) {
            showErrorPage(2, "ERROR - 503 BD", 'HTTP/1.0 503 Service Unavailable', 503);
        }
        //change to defualt work error apache
        restore_error_handler();

        if ($get_total_rows) {
            $jsondata["pages"] = $pages;
            echo json_encode($jsondata);
            exit;
        } else {
            showErrorPage(2, "ERROR - 404 NO DATA", 'HTTP/1.0 404 Not Found', 404);
        }
    }/////END num_pages
  }


  public function view_error_true() {
    if ((isset($_POST["view_error"])) && ($_POST["view_error"] === "true")) {
        showErrorPage(0, "ERROR - 503 BD Unavailable", 503);
    }
	}


  public function view_error_false() {
    if ((isset($_POST["view_error"])) && ($_POST["view_error"] === "false")) {
        showErrorPage(3, "RESULTS NOT FOUND <br> Please, check over if you misspelled any letter of the search word");
    }
	}

  public function obtain_products(){

    if (isset($_POST["idProduct"])) {

        $arrValue= null;
        //$result = filter_num_int($_GET['idProduct']);/// per a numero id
        $result = filter_string($_POST['idProduct']); ////Cambiat per a que funcione en dni in no en numero id
        if ($result['result']) {
          $id= $result['data'];
        }else {
          $id= 1;
        }

        set_error_handler('ErrorHandler');
        try {
          $path_model = MODEL_PRODUCTS;
          $arrValue = loadModel($path_model, "products_model", "details_products",$id);
          /*echo json_encode($arrValue);/////////
          exit;*/
        } catch (Exception $e) {
          showErrorPage(2, "ERROR - 503 BD", 'HTTP/1.0 503 Service Unavailable', 503);
        }
        restore_error_handler();

        if ($arrValue) {
            $jsondata["tecnico"] = $arrValue[0];
    	      echo json_encode($jsondata);
            exit;
        } else {
            showErrorPage(2, "ERROR - 404 NO DATA", 'HTTP/1.0 404 Not Found', 404);
        }
    }else {
        $item_per_page = 6;

        //filter to $_POST["page_num"]
        if (isset($_POST["page_num"])) {
            $result = filter_num_int($_POST["page_num"]);
            if ($result['result']) {
                $page_number = $result['data'];
            }
        } else {
            $page_number = 1;
        }

        if (isset($_POST["keyword"])) {
            $result = filter_string($_POST["keyword"]);
            if ($result['resultado']) {
                $criteria = $result['data'];
            } else {
                $criteria = '';
            }
        } else {
            $criteria = '';
        }

        if (isset($_POST["keyword"])) {
            $result = filter_string($_POST["keyword"]);
            if ($result['result']) {
                $criteria = $result['data'];
            } else {
                $criteria = '';
            }
        }

        $position = (($page_number - 1) * $item_per_page);
        $path_model = MODEL_PRODUCTS;
        $limit = $item_per_page;
        $arrArgument = array(
            "column" => "name",
            "like" => $criteria,
            "position" => $position,
            "limit" => $limit
        );
        set_error_handler('ErrorHandler');
        try {

            $arrValue = loadModel($path_model, "products_model", "select_like_limit_products", $arrArgument);
        } catch (Exception $e) {
            showErrorPage(0, "ERROR - 503 BD Unavailable", 503);
        }
        restore_error_handler();

        if ($arrValue) {
            paint_template_products($arrValue);
        } else {
            showErrorPage(0, "ERROR - 404 NO PRODUCTS", 404);
        }
    }

  }
}
