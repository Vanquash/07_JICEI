<div class="row">
    <div class="col-xs-12">
        <form action="guardar.php" method="post" class="form-horizontal formulario">

            <div class="form-group">
	            <?php if ($faq->getIdPregunta()) { ?>
                    <input type="hidden" name="idPregunta" value=" <?php echo $faq->getIdPregunta(); ?>" class="form-control">
                <?php 
                    }
                 ?>	
            </div>
    
            <div class="form-group">
                <label>Pregunta</label>
                    <input type="text" id="pregunta" name="pregunta" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" value="<?php echo $faq->getPregunta(); ?>" class="form-control" required>
                    <div class="help-block with-errors">No debe de contener más de 100 carácteres. Los Signos de interrogación se colocan automaticamente al finalizar el registro</div>
            </div>

            <div class="form-group">
                <label>Respuesta</label>
                    <input type="text" id="respuesta" name="respuesta" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" value="<?php echo $faq->getRespuesta(); ?>" class="form-control" required>
                    <div class="help-block with-errors">No debe de contener más de 100 carácteres</div>
            </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                        	<input type="submit" value="Registrar" class="btn btn-primary form-control">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="index.php" class="btn btn-primary form-control">Cancelar registro</a>
                        </div>
                    </div>
                </div>
        </form>
    </div>
</div>