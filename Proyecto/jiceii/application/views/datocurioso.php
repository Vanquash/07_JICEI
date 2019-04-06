<?php 
include_once 'template/header.php';
?>

<h1>Datos curiosos</h1>
<br>

<div class="row">
    <div class="col-md-4">
        <p>Sabías que la energía solar utiliza 
        una energía natural para producir electricidad, la del sol,
        una energía sostenible.</p>
        <img src="<?= base_url(); ?>images/luz.jpg" width="100%" height="100%" class="anim_hover_3">
    </div>

    <div class="col-md-4">
        <p>Sabías que cada metro cuadrado del planeta 
        recibe unos 1.336 vatios de radiación solar directa, 
        es una fuente de energía constante e inagotable.</p>
        <img src="<?= base_url(); ?>images/metro.png" width="100%" height="100%" class="anim_hover_3">

    </div>

     <div class="col-md-4">
        <p>¿Y qué pasa en los días nublados o en invierno? 
        Puedes utilizar una batería como respaldo que se cargue
        con la energía solar, dándote así una fuente alternativa 
        en los días con menos producción.</p>
        <img src="<?= base_url(); ?>images/invierno.jpg" width="100%" height="100%" class="anim_hover_3">
    </div>
</div>

<?php 
include_once 'template/footer.php';
?>