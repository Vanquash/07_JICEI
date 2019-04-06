<div class="card-header">
	<h1 class="card-title">Lista de productos registrados</h1>
</div>

<div class="row">
	<div class="col-xs-12">
		<form action="guardar" method="POST" class="form-horizontal formulario">
			
				<div class="form-group">
					<label>Nombre del Producto</label>
					<input type="text" id="nombreProducto" name="nombreProducto" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{3,20}" class="form-control" required>
					<div class="help-block with-errors">No debe de contener más de 20 carácteres</div>
				</div>

				<div class="form-group">
					<label>Cantidad del Producto</label>
					<input type="text" id="cantidadProducto" name="cantidadProducto" pattern="^[_0-9]{2}" class="form-control" required>
					<div class="help-block with-errors">No debe de contener más de 2 digitos</div>
				</div>

				<div class="form-group">
					<label>Fecha</label>
					<input type="date" id="fecha" name="fecha" required>
				</div>

				<div class="form-group">
					<label>Registrado por:</label>
					<select name="nombreAdministrador" id="nombreAdministrador" class="form-control" required>
						<option value="">Selecciona una opción</option>
						<option value="1">Hilda carolina Ortiz Vazquez</option>
						<option value="2">Joselyn Iraed Piñón</option>
						<option value="3">Rosa Icela Rubio Muñoz</option>
						<option value="4">Idalmi Valdez Gonzales</option>
						<option value="5">Gabriel Carrasquedo Jiménez</option>
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
						<a href="<?= base_url(); ?>index.php/welcome/mostrarProduct" class="btn btn-danger form-control">Cancelar registro</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>