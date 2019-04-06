
<h1>Tabla de registro de Comentaríos</h1>

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
                <th scope="col">Correo del remitente</th>
                <th scope="col">Mensaje</th>
                <th scope="col">Estatus del comentarío</th>
                <th scope="col">Atendido por:</th>
            </tr>
        </thead>

        <tbody>
            <?php 
                foreach($comentario as $cm){
            ?>
                <tr>
                    <td> <?php echo $cm->correo;?> </td>
                    <td> <?php echo $cm->mensaje;?> </td>

                    <td> <?php if($cm->status == 1) { 
                        echo 'Visible';
                    }else{ 
                        echo 'Oculto';   
                    }?> </td>

                    <td> <?php if($cm->revisado == null){
                        echo 'Sin revisar'; 
                    }else{
                        echo $cm->revisado;
                    }?> </td>

                    <th> <a href = "<?=base_url();?>index.php/comentario/eliminar<?php echo $cm->idComentario; ?>"  class="btn btn-danger"><span class="icon icon-eliminar"></span>Eliminar</a> </th>
                    <th> <a href = "<?=base_url();?>index.php/comentario/modificar<?php echo $cm->idComentario; ?>"  class="btn btn-warning"><span class="icon icon-editar"></span>Modificar</a> </th>       
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>
