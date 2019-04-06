<?php
include_once 'template/header.php';
?><h1>Preguntas frecuentes</h1>

<?php
foreach ($faq as $fq) {
	?>
	<div class="row">
		<div class="col-xs-4">
			<p><b>¿<?php echo $item['pregunta'] ?>?</b></p> <br>
				<p> <?php echo $item['respuesta'] ?> </label>
				</div>
			</div>
		<?php
			}
			?>

<?php
			include_once 'template/footer.php';
			?>