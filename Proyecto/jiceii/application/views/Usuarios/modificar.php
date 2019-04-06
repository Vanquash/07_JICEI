<div class="row">
    <div class="col-xs-12">
		<form action="<?= base_url(); ?>index.php/usuario/actualizar" method="post" enctype="multipart/form-data" class="form-horizontal formulario">
			<div class="form-group">
				<?php foreach ($usuario as $us) { ?>
				<label>Nombre(s) y Apellido(s)</label>
					<input type="text" id="nombreUsuario" name="nombreUsuario" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,50}" value="<?php echo $us->nombreUsuario(); ?>"  class="form-control" required>
					<div class="help-block with-errors">No debe de contener más de 50 carácteres</div>
			</div>

			<div class="form-group">
					<label for="puestoUsuario">Puesto Usuario</label>
						<select name="puestoUsuario"  class="form-control" required>
							<option value="">Selcciona una opción</option>
							<option value="1" <?php if ($us->puestoUsuario() == 1) {	echo 'selected';} ?> >Gerencia general</option>
							<option value="2" <?php if ($us->puestoUsuario() == 2) {	echo 'selected';} ?> >Gerencia Administrativa</option>
							<option value="3" <?php if ($us->puestoUsuario() == 3) {	echo 'selected';} ?> >Gerencia de producción</option>
							<option value="4" <?php if ($us->puestoUsuario() == 4) {	echo 'selected';} ?> >Gerencia de finanzas</option>
							<option value="5" <?php if ($us->puestoUsuario() == 5) {	echo 'selected';} ?> >Departamento de compras</option>
						</select>
			</div>

			<div class="form-group">
				<label>Correo electrónico</label>
					<input type="email" id="correo" name="correo" value="<?php echo $us->correo(); ?>" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"  class="form-control" required>
					<div class="help-block with-errors">Escribe un correo electrónico</div>
			</div>

			<div class="form-group">
					<label for="privilegios">Privilegios</label>
						<select name="privilegios"  class="form-control" required>
							<option value="">Selcciona una opción</option>
							<option value="2" <?php if ($us->privilegios() == 2) {echo 'selected';} ?> >Administrador</option>
						</select>
			</div>


			<?php if ($idUsuario) { ?>
				<div class="form-group">
					<label for="password">Contraseña</label>
					<p>Si deseas cambiar la contraseña, inserta datos en el campo</p>
					<input type="password" id="password" name="password" pattern="[A-Za-z0-9!?-]{8,12}" class="form-control">
					<input type="hidden" id="password2" name="password2" value="<?php echo $us->password(); ?>">
					<div class="help-block with-errors">La contraseña debe de tener entre 8 y 12 caracteres</div>
				</div>
			<?php 
	} else { ?>
				<div class="form-group">
						<label for="password" class="control-label">Contraseña</label>
						<input type="password" id="password" name="password" pattern="[A-Za-z0-9!?-]{8,12}" class="form-control" required>
						<input type="hidden" id="password2" name="password2" value="<<?php echo $us->password(); ?>">
						<div class="help-block with-errors">La contraseña debe de tener entre 8 y 12 caracteres</div>
				</div>
			<?php 
	} ?>

				<div class="form-group">
					<label>Perfil</label>
						<input type="file" id="imagen" name="imagen">
						<input type="hidden" id="imagen2" name="imagen2" value="<?php echo $us->imagen(); ?>" class="form-control">
				</div>

				<div class="form-group">
					<label for="status">Estatus</label>
						<select name="status" class="form-control">
							<option value="">Selcciona una opción</option>
							<option value="0" <?php if ($us->status() == 0) {echo 'selected';} ?> >Inactivo</option>
							<option value="1" <?php if ($us->status() == 1) {echo 'selected';} ?> >Activo</option>
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
								<a href="index.php" class="btn btn-primary form-control">Cancelar registro</a>
							</div>
						</div>
					</div>
		</form>
    </div>
</div>