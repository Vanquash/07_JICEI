<div class="card-header">
    <h1 class="card-title">Modificar Producto</h1>
</div>

<div class="row">
    <div class="col-xs-12">
		<form action="<?= base_url(); ?>index.php/producto/actualizar" method="post" class="form-horizontal formulario">
			<div class="form-group">
				<?php foreach ($producto as $p) { ?>
    			<label>Nombre del Producto</label>
    				<input type="text" id="nombreProducto" name="nombreProducto" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,20}" value="<?php echo $p->nombreProducto; ?>" class="form-control" required>
					<div class="help-block with-errors">No debe de contener más de 20 carácteres</div>
			</div>
					
			<div class="form-group">
    			<label>Cantidad del Producto</label>
					<input type="text" id="cantidadProducto" name="cantidadProducto" pattern="^[_0-9]{2}" value="<?php echo $p->cantidadProducto; ?>" class="form-control" required>
					<div class="help-block with-errors">No debe de contener más de 2 digitos</div>
			</div>

			<div class="form-group">
				<label>Fecha</label>
					<input type="date" id="fecha" name="fecha" value="<?php echo $p->fecha; ?>" required>
			</div>

			<div class="form-group">
					<label>Registrado por:</label>
					<select name="nombreAdministrador" id="nombreAdministrador" class="form-control" required>
						<option value="">Selecciona una opción</option>
							<option values="1" <?php if($p->nombreAdministrador == 1){echo 'selected';}?>>Hilda carolina Ortiz Vazquez</option>
							<option values="2" <?php if($p->nombreAdministrador == 2){echo 'selected';}?>>Joselyn Iraed Piñón</option>
							<option values="3" <?php if($p->nombreAdministrador == 3){echo 'selected';}?>>Rosa Icela Rubio Muñoz</option>
							<option values="4" <?php if($p->nombreAdministrador == 4){echo 'selected';}?>>Idalmi Valdez Gonzales</option>
							<option values="5" <?php if($p->nombreAdministrador == 5){echo 'selected';}?>>Gabriel Carrasquedo Jiménez</option>
					</select>
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
						<a href="<?= base_url(); ?>index.php/welcome/mostrarProduct" class="btn btn-danger form-control">Cancelar registro</a>
					</div>
				</div>
    		</div>
		</form>
    </div>
</div>
