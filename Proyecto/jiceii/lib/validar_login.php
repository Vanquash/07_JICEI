<?php 
session_start();
require_once '../admin/class/Usuario.php';
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
       
        $usuario = new Usuario();

        $correo = (isset($_REQUEST['correo'])) ? $_REQUEST['correo'] : null;
        $password = (isset($_REQUEST['password'])) ? $_REQUEST['password'] : null;

        $clave_encrypt = md5($password);

        $usuario->setCorreo($correo);
        $usuario->setPassword($clave_encrypt);
        $usuario->LogIn();

        $registro = $usuario->LogIn();
        if($registro){
        header('Location: ../admin/Usuarios/index.php?bienvenida=1');
           
    }else{
        header('Location: ../logIn.php?error=1');
    
    }
    
    }else{
    header('Location: ../admin/index.php');
    }