<?php
require_once 'template/header.php';

if (isset($_GET['cerrar'])) {
    if ($_GET['cerrar'] == 1) {
        echo '<p class="alert alert-info alerta">Ha cerrado tu sesión';
    }
}

if (isset($_GET['error'])) {
    if ($_GET['error'] == 1) {
        echo '<p class="alert alert-danger alerta">Tu correo o contraseña de usuario son incorrectos';
    }
}

/*<?= base_url(); ?>index.php/welcome/logi*/
?>

<h1>Iniciar sesión</h1>

<div class="row">
    <div class="col-xs-12">
        <form action="" method="POST" data-toggle="validator" role="form" class="form-horizontal login">

            <div class="form-group">
                <label>Email</label>
                <input type="email" id="correo" name="correo" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" class="form-control" required>
                <div class="help-block with-errors">Escribe tu correo electrónico de usuario</div>
            </div>

            <div class="form-group">
                <label>Contraseña</label>
                <input type="password" id="password" name="password" pattern="[A-Za-z0-9!?-]{8,12}" class="form-control" required>
                <div class="help-block with-errors">La contraseña debe de contener entre 8 y 12 caracteres</div>
            </div>

            <div class="form-group">
                <!--<input type="submit" value="Iniciar sesión" class="btn btn-primary form-control">-->
                <button class="btn btn-primary form-control"> Iniciar Sesion </button>
            </div>
        </form>
    </div>
</div>

<?php
    include_once 'template/footer.php';
?>