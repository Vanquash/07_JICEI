<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JICEI</title>
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>css/styleBack.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>css/animacion.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>fonts/fonts.css">
    <link rel="icon" href="<?= base_url(); ?>images/jicei.ico">
    <script src="<?= base_url(); ?>js/jquery.js"></script>
    <script src="<?= base_url(); ?>js/bootstrap.js"></script>
    <script src="<?= base_url(); ?>js/validator.js"></script>
</head>
<body>

<div class="container-fluid">
	<div class="row">
        <div class="col-md-2 well personal_menu">
            <a href="<?= base_url(); ?>index.php/welcome/mostrarUsua"><h4>Personal</h4></a>
            <img src="<?= base_url(); ?>images/usuario.png" class="imagen_menu anim_hover_3">
        </div>

        <div class="col-md-2 well produccion_menu">
            <a href="<?= base_url(); ?>index.php/welcome/mostrarProduct"><h4>Producción</h4></a>
            <img src="<?= base_url(); ?>images/engrane.png" class="imagen_menu anim_hover_3">
        </div>

        <div class="col-md-2 well comentario_menu">
            <a href="<?= base_url(); ?>index.php/welcome/mostrarComent"><h4>Comentarío</h4></a>
            <img src="<?= base_url(); ?>images/comentario.png" class="imagen_menu anim_hover_3">
        </div>

        <div class="col-md-2 well catalogo_menu">
            <a href="<?= base_url(); ?>index.php/welcome/mostrarCatal"><h4>Catálogo</h4></a>
            <img src="<?= base_url(); ?>images/catalogo.png" class="imagen_menu anim_hover_3">
        </div>

        <div class="col-md-2 well faq_menu">
            <a href="<?= base_url(); ?>index.php/welcome/mostrarFaqs"><h4>FaQ</h4></a>
            <img src="<?= base_url(); ?>images/pregunta.png" class="imagen_menu anim_hover_3">
        </div>

        <div class="col-md-2 well logout_menu">
            <a href="<?= base_url(); ?>logout"><h4>LogOut</h4></a>
            <img src="<?= base_url(); ?>images/logout.png" class="imagen_menu anim_hover_3">
        </div>
	</div>