
<h1>Tabla de registro de Catálogo</h1>

    <?php
            if(isset($_GET['bien'])){
                if($_GET['bien']==1){
                    echo '<p class="alert alert-info alerta">Se ha realizado un cambio en la tabla';
                }
            }
    ?>

    <?php
            if(isset($_GET['eliminar'])){
                if($_GET['eliminar']==1){
                    echo '<p class="alert alert-danger alerta">Se ha eliminado un registro de la tabla';
                }
            }
    ?>

<div class="table-responsive">
    <table class="table">
        <thead class="thead">
            <tr>
                <th scope="col">Producto</th>
                <th scope="col">Perfil</th>
                <th scope="col">Precio</th>
                <th scope="col">Descripción</th>
                <th><a href="<?= base_url(); ?>index.php/catalogo/agregar" class="btn btn-sucess"><span class="icon icon-agregar"></span>Agregar</a></th>
            </tr>
        </thead>

        <tbody>
            <?php foreach($catalogo as $ct){  ?>
                <tr>
                    <td> <?php echo $ct->producto;?> </td>
                    <td> <img src="<?= base_url(); ?>index.php/catalogo/<?php echo $ct->imagen;?>" width="50" height="50"> </td>
                    <td> <?php echo '$'. $ct->precioProducto;?> </td>
                    <td> <?php echo $ct->descripcion;?> </td>
                    <th> <a href = "<?= base_url(); ?>index.php/catalogo/eliminar<?php echo $ct->idCatalogo; ?>" class="btn btn-danger"><span class="icon icon-eliminar"></span>Eliminar</a> </th>
                    <th> <a href = "<?= base_url(); ?>index.php/catalogo/modificar<?php echo $ct->idCatalogo; ?>" class="btn btn-warning"><span class="icon icon-editar"></span>Modificar</a> </th>       
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>