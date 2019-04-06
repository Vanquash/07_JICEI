<?php 
    require_once 'template/header.php';
?>

<h1>Catálogo de producto(s)</h1>

<?php if(count($catalogo) > 0){
	//echo 'hay ' .count($catalogo) .' ' .'productos';	
	foreach ($catalogo as $item){
?>

<div class="col-md-4">
    <img src="<?php echo '<?= base_url(); ?>index.php/catalogo/' .$item['imagen']; ?>" class="imagen_catalogo">
    <?php echo '<p class="informacion_catalogo"><b>Nombre: </b>'. $item['producto'] .'</p>' ?> 
    <?php echo '<p class="informacion_catalogo"><b>Precio: </b>'. '$'.$item['precioProducto'] .'</p>'?>
    <?php echo '<p class="informacion_catalogo"><b>Descripción: </b>'. $item['descripcion'] .'</p>'?>
</div>

<?php
}
}
?>

<?php 

include_once 'template/footer.php';
?>