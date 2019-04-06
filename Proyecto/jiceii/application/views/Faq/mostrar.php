<h1>Tabla de registro de Preguntas Frecuentes</h1>

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
                <th scope="col">Pregunta</th>
                <th scope="col">Respuesta</th>
                <th scope="col"><a href="<?= base_url(); ?>index.php/faq/agregar"  class="btn btn-primary"><span class="icon icon-agregar"></span>Agregar</a></th>
            </tr>
        </thead>

        <tbody>
            <?php 
            foreach($faq as $fq){
            ?>
                <tr>
                    <td> ¿<?php echo $fq->pregunta;?>? </td>
                    <td> <?php echo $fq->respuesta;?> </td>
                    <th> <a href = "<?= base_url(); ?>index.php/faq/eliminar<?php echo $fq->idPregunta; ?>"  class="btn btn-danger"><span class="icon icon-eliminar"></span>Eliminar</a> </th>
                    <th> <a href = "<?= base_url(); ?>index.php/faq/modificar<?php echo $fq->idPregunta; ?>"  class="btn btn-warning"><span class="icon icon-editar"></span>Modificar</a> </th>       
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>
