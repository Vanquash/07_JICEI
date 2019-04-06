<?php
session_start();
include_once 'templateBack/header.php';

if (isset($_SESSION['privilegios'])) {
    if ($_SESSION['privilegios'] == 3) {

        header('Location: ../index.php');
    }

} else {

    header('Location: ../index.php');

}
?>

<a href="index.php">Index</a>
<a href="Usuarios/index.php">Usuarios</a>
<a href="Producto/index.php">Producto</a>
<a href="Comentario/index.php">Comentario</a>
<a href="Catalogo/index.php">Catalogo</a>
<a href="Faq/index.php">Faq</a>
<a href="../logout.php">Cerrar Session</a>
