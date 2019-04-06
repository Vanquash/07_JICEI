<div class="row">
    <div class="col-xs-12">
        <form action="<?= base_url(); ?>index.php/catalogo/actualizar" method="post" enctype="multipart/form-data" class="form-horizontal formulario">

            <div class="form-group">
	            <?php foreach ($catalogo as $ct) { ?>
                    <input type="hidden" name="idCatalogo" value=" <?php echo $ct->IdCatalogo(); ?>" class="form-control">	
            </div>

            <div class="form-group">
                <label>Producto</label>
	                <select name="producto" class="form-control" required>
		                <option value="">Selecciona una opción</option>
		                
                        <?php
		                    foreach ($producto as $p) {
		                ?>
		                <option value="<?php echo $p->nombreProducto;?>" <?php if($ct->Producto() == $p->nombreProducto){echo 'selected';} ?> ><?php echo $p->nombreProducto;?></option>
                        <?php
		                }
		                ?>
                </select>
            </div>

            <div class="form-group">
                <label>Imagen</label>
                    <input type="file" id="imagen" name="imagen">
                    <input type="hidden" id="image2" name="imagen2" value="<?php echo $ct->Imagen(); ?>" class="form-control">
            </div>

            <div class="form-group">
                <label>Precio</label>
                    <input type="text" id="precioProducto" name="precioProducto" pattern="^[_0-9]{3}" value="<?php echo $ct->PrecioProducto(); ?>" class="form-control" required>
                    <div class="help-block with-errors">El precio solo debe de contener 3 digitos</div>
            </div>

            <div class="form-group">
                <label>Descripción</label>
                    <input type="text" id="descripcion" name="descripcion" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,100}" value="<?php echo $ct->descripcion(); ?>" class="form-control" required>
                    <div class="help-block with-errors">No debe de contener más de 100 carácteres</div>
            </div>
<?php 
	} 
?>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
	                    <input type="submit" value="Registrar" class="btn btn-primary form-control">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <a href="index.php" class="btn btn-danger form-control">Cancelar registro</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
