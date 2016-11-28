<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <!--title dinamic-->
    <title>RoT-<?php if(isset($_GET['module'])){echo $_GET['module'];}else{echo "homepage";}?></title>
    <!--favicon links-->
    <link rel="shortcut icon" href="<?php echo IMG_PATH ?>favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?php echo IMG_PATH ?>favicon.ico" type="image/x-icon">
    <!--favicon links-->
    <meta name="description" content="This is the Repair on time official web page." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <link rel="stylesheet" href="<?php echo CSS_PATH ?>styles.css" />

    <!--Añadido de plantilla vieja-->

    <link href="<?php echo CSS_PATH ?>animate.min.css" rel="stylesheet">
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <!--<link href="<?php echo CSS_PATH ?>bootstrap.css" rel="stylesheet" />-->
    <!-- FONTAWESOME STYLE CSS -->
    <link href="<?php echo CSS_PATH ?>font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <!--<link href="<?php/* echo CSS_PATH */?>style.css" rel="stylesheet" />-->
    <link href="<?php echo CSS_PATH ?>main.css" rel="stylesheet">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

    <!---////////////////////////////   NOVES LINIES MAP //////////////////////////////////////////-->
    <script type="text/javascript" src="<?php echo JS_PATH ?>cookies.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH ?>main.js"></script>
    <link href="<?php echo TECHNICIANS_CSS_PATH ?>main.css" rel="stylesheet">

    <!--Añadido de plantilla vieja-->
  </head>
