<?php
    require_once 'template/header.php';
?>
<br>
<div class="row">
    <div class="col-xs-12">
    <?php
        if(isset($_GET['enviar'])){
            if($_GET['enviar']==1){
                echo '<p class="alert alert-info alerta">Tu comentarío ha sido enviado';
            }
        }
    ?>
    </div>
</div>

<h1>Comentaríos</h1>

<div class="row">
    <div class="col-md-6">
        <form action="guardar" method="post" class"form-horizontal">
            <div class="form-group">
                <label>Correo electrónico</label>
                    <input type="email" id="correo" name="correo" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" class="form-control" required>
					<div class="help-block with-errors">Escribe un correo electrónico</div>
            </div>

            <div class="form-group">
                <label>Mensaje</label>
                <input type="text" id="mensaje" rows="4" name="mensaje" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" class="form-control" required>
                <div class="help-block with-errors">No debe de contener más de 100 carácteres</div>
            </div>

            <div class="form-group">
            <input type="submit" value="Enviar Comentario" class="btn btn-primary  form-control">
            </div>

        </form>
    </div>
    
    <div class="col-md-6">

        <?php 
	        foreach ($comentario as $cm) {
	    ?>
            <div class="col-xs-12">
	            <label>Correo: <?php echo $cm->correo ?></label> <br>
	            <label>Mensaje: <?php echo $cm->mensaje ?> </label>  <br><br>
            </div>
	    <?php	
	   }
	    ?>
    </div>
</div>

<?php
include_once 'template/footer.php';
?>