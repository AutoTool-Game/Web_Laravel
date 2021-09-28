

<h1><?php echo e("Hello world"); ?></h1>

<?php echo "<h1>Hello world !!</h1>"; ?>

<?php 
	$n = 5;
 ?>
<?php if($n % 2 == 0): ?>
    <?php echo "<h1>$n là số chẵn</h1>"; ?>

@lese
    <?php echo "<h1>$n là số lẻ</h1>"; ?>

<?php endif; ?>

<table cellpadding="5" border="1" style="width: 300px; border-collapse: collapse;">
	<?php for($i = 1; $i <= 5; $i++): ?>
		<tr>
			<td <?php if($i % 2 == 0): ?> style="background: yellow;" <?php endif; ?> ><?php echo $i; ?></td>
		</tr>
	<?php endfor; ?>
</table><?php /**PATH D:\Xampp\htdocs\php56_laravel\resources\views/php56/view3.blade.php ENDPATH**/ ?>