<div class="row">
    <div class="col-xs-12">
        <form action="guardar" method="POST" class="form-horizontal formulario">

            <div class="form-group">
                <label>Pregunta</label>
                    <input type="text" id="pregunta" name="pregunta" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" class="form-control" required>
                    <div class="help-block with-errors">No debe de contener más de 100 carácteres. Los Signos de interrogación se colocan automaticamente al finalizar el registro</div>
            </div>

            <div class="form-group">
                <label>Respuesta</label>
                    <input type="text" id="respuesta" name="respuesta" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" class="form-control" required>
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
                            <a href="<?= base_url(); ?>index.php/welcome/mostrarFaqs" class="btn btn-danger form-control">Cancelar registro</a>
                        </div>
                    </div>
                </div>
        </form>
    </div>
</div>
