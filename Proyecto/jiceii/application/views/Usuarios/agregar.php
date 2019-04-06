<div class="row">
	<div class="col-xs-12">
		<form action="guardar" method="POST" enctype="multipart/form-data" class="form-horizontal formulario">
			<div class="form-group">
				<label>Nombre y Apellidos</label>
				<input type="text" id="nombreUsuario" name="nombreUsuario" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,50}" class="form-control" required>
				<div class="help-block with-errors">No debe de contener más de 50 carácteres</div>
			</div>

			<div class="form-group">
				<label for="puestoUsuario">Puesto Usuario</label>
				<select name="puestoUsuario" class="form-control" required>
					<option value="">Selcciona una opción</option>
					<option value="1">Gerencia general</option>
					<option value="2">Gerencia Administrativa</option>
					<option value="3">Gerencia de producción</option>
					<option value="4">Gerencia de finanzas</option>
					<option value="5">Departamento de compras</option>
				</select>
			</div>

			<div class="form-group">
				<label>Correo electrónico</label>
				<input type="email" id="correo" name="correo" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" class="form-control" required>
				<div class="help-block with-errors">Escribe un correo electrónico</div>
			</div>

			<div class="form-group">
				<label for="privilegios">Privilegios</label>
				<select name="privilegios" class="form-control" required>
					<option value="">Selcciona una opción</option>
					<option value="1">Super Administrador</option>
					<option value="2">Administrador</option>
				</select>
			</div>

			<div class="form-group">
				<label for="password">Contraseña</label>
				<input type="password" id="password" name="password" pattern="[A-Za-z0-9!?-]{8,12}" class="form-control" required>
				<div class="help-block with-errors">La contraseña debe de tener entre 8 y 12 caracteres</div>
			</div>

			<div class="form-group">
				<label>Perfil</label>
				<input type="file" id="imagen" name="imagen" required>
			</div>

			<div class="form-group">
				<label for="status">Estatus</label>
				<select name="status" class="form-control" required>
					<option value="">Selcciona una opción</option>
					<option value="0">Inactivo</option>
					<option value="1">Activo</option>
				</select>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<input type="submit" value="Registrar" class="btn btn-primary form-control">
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<a href="<?= base_url(); ?>index.php/welcome/mostrarUsua" class="btn btn-danger form-control">Cancelar registro</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>