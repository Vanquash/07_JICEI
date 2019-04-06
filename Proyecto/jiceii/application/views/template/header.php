<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?=$titulo?></title>
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>css/style.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>css/navbar.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>css/animacion.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet"> 
    <link rel="icon" href="<?=base_url();?>images/jicei.ico">
    <script src="<?=base_url();?>js/jquery.js"></script>
    <script src="<?=base_url();?>js/bootstrap.js"></script>
    <script src="<?=base_url();?>js/validator.js"></script>
</head>
<body>

<div class="container-fluid">
<div class="row">
<div class="col-xs-12">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<?= base_url(); ?>index.php/welcome/index"><span class="icon icon-inicio"></span><span class="sr-only">(current)</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-left">
        <li><a href="<?= base_url(); ?>index.php/welcome/catalo"><span class="icon icon-catalogo"></span>Catalogo</a></li>
        <li><a href="<?= base_url(); ?>index.php/welcome/comenta"><span class="icon icon-comentario"></span>Comentarios</a></li>
        <li><a href="<?= base_url(); ?>index.php/welcome/filosof"><span class="icon icon-conocer"></span>Conocenos</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Más <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?= base_url(); ?>index.php/welcome/benefi">Beneficios</a></li>
            <li><a href="<?= base_url(); ?>index.php/welcome/datosCurio">Datos Curiosos</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?= base_url(); ?>index.php/welcome/faq">FaQ</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<?= base_url(); ?>index.php/welcome/logi"><span class="icon icon-sesion"></span>Iniciar sesión</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>
</div>

<br>
<br>
<br>




