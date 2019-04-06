<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$comentario = new Comentario();

		$correo = (isset($_REQUEST['correo'])) ? $_REQUEST['correo'] : null;
		$mensaje = (isset($_REQUEST['mensaje'])) ? $_REQUEST['mensaje'] : null;
		$status = (isset($_REQUEST['status'])) ? $_REQUEST['status'] : null;

		$comentario->setCorreo($correo);
		$comentario->setMensaje($mensaje);
		$comentario->setStatus(0);
		$comentario->Guardar();

      header('Location: <?= base_url(); ?>index.php/comentario?enviar=1');
	}else{
      header('Location: <?= base_url(); ?>index.php/index?error=1');
	}