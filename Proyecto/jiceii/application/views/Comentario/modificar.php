
<div class="row">
    <div class="col-xs-12">
		
        <form action="<?= base_url(); ?>index.php/comentario/actualizar" method="post" enctype="multipart/form-data" class="form-horizontal formulario">

			<div class="form-group">
				<?php foreach ($catalogo as $ct) { ?>
					
    			<label>Correo</label>
    				<input type="text" id="correo" name="correo" value="<?php echo $ct->correo(); ?>" class="form-control" readonly>
			</div>

			<div class="form-group">
    			<label>Mensaje</label>
    				<input type="text" id="mensaje" name="mensaje" value="<?php echo $ct->mensaje(); ?>" class="form-control" readonly>
			</div>
	
			<div class="form-group">
    			<label for="status">Estatus</label>
					<select name="status" class="form-control">
						<option value="">Selcciona una opción</option>
						<option value="0" <?php if($ct->status() == 0){echo 'selected';} ?> >Oculto</option>
						<option value="1" <?php if($ct->status() == 1){echo 'selected';} ?> >Visible</option>
					</select>
			</div>

			<div class="form-group"> 
				<label>Revisado por:</label>
					<select name="revisado" class="form-control" required>
						<option value="">Selecciona una opción</option>
							<?php
								foreach ($registro as $item) {
									?>
								<option value="<?php echo $item['nombreUsuario'];?>" <?php if($ct->revisado() == $item['nombreUsuario']){echo 'selected';} ?> required><?php echo $item['nombreUsuario'];?></option>
							<?php
							}
							?>
					</select>
			</div>

				<?php }?>	

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