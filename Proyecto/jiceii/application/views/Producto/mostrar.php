
<h1>Tabla de registro de producto</h1>

    <?php
        if(isset($_GET['bien'])){
            if($_GET['bien']==1){
                echo '<p class="alert alert-info alerta">Se ha realizado un cambio en la tabla';
            }
        }
        
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
                <th scope="col">Producción</th>
                <th scope="col">Fecha</th>
                <th scope="col">Registrado por:</th>
                <th scope="col"><a href="<?= base_url(); ?>index.php/producto/agregar"  class="btn btn-primary"><span class="icon icon-agregar"></span>Agregar</a></th>
            </tr>
        </thead>

        <tbody>
            <?php 
            foreach($producto as $p){
            ?>
                <tr>
                    <td> <?php echo $p->nombreProducto;?> </td>
                    <td> <?php echo $p->cantidadProducto;?> </td>
                    <td> <?php echo $p->fecha;?> </td>
                    <td> <?php echo $p->nombreAdministrador?><td>
                    <th> <a href = "<?= base_url(); ?>index.php/producto/eliminar/<?php echo $p->idProducto; ?>"  class="btn btn-danger"><span class="icon icon-eliminar"></span>Eliminar</a> </th>
                    <th> <a href = "<?= base_url(); ?>index.php/producto/modificar/<?php echo $p->idProducto; ?>"  class="btn btn-warning"><span class="icon icon-editar"></span>Modificar</a> </th>       
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>