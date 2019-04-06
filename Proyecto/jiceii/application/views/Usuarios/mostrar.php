<h1>Tabla de registros de personal JICEI</h1>

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
    
    <?php
            if(isset($_GET['bienvenido'])){
                if($_GET['bienvenida']==1){
                    echo '<p class="alert alert-success alerta">Has iniciado sesión';
                            }
                        }
        ?>

<div class="table-responsive">
    <table class="table">
        <thead class="thead">
            <tr>
                <th scope="col">Nombre(s) y Apellido(s)</th>
                <th scope="col">Puesto</th>
                <th scope="col">Correo</th>
                <th scope="col">Estatus</th>
                <th scope="col">Privilegios</th>
                <th scope="col">Perfil</th>
                <th><a href="<?= base_url();?>index.php/usuario/agregar"  class="btn btn-primary"><span class="icon icon-agregar"></span>Agregar</a></th>
            </tr>
        </thead>

        <tbody>
            <?php 
            foreach($usuario as $us){
            ?>
                <tr>
                    <td> <?php echo $us->nombreUsuario;?> </td>
                    <td> <?php if($us->puestoUsuario == 1){
                                    echo 'Gerencia general';
                                }else if($us->puestoUsuario == 2){
                                    echo 'Gerencia Administrativa';
                                }else if($us->puestoUsuario == 3){
                                    echo 'Gerencia de producción';
                                }else if($us->puestoUsuario == 4){
                                    echo 'Gerencia de finanzas';
                                }else if($us->puestoUsuario == 5){
                                    echo 'Departamento de compras';
                                }?>
                        </td>
                    
                    <td> <?php echo $us->correo;?> </td>
                    
                    <td> <?php if($us->status == 1) { 
                        echo 'Activo';
                    }else{ 
                        echo 'Inactivo';   
                    }?></td>

                    <td> <?php if($us->privilegios == 1) { 
                        echo 'Super Administrador';
                    }else if($us->privilegios == 2){ 
                        echo 'Administrador';   
                    }?></td>

                    <td> <img src="<?php echo $us->imagen?>" width="100" height="100">  </td>
                    
                    <?php if($us->privilegios != 1){?>
                    <th> <a href = "<?= base_url(); ?>index.php/usuario/eliminar"  class="btn btn-danger"><span class="icon icon-eliminar"></span>Eliminar</a> </th>
                    <th> <a href = "<?= base_url(); ?>index.php/usuario/modificar"  class="btn btn-warning"><span class="icon icon-editar"></span>Modificar</a> </th>           
                    <?php }?>
                   
                    
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>
        