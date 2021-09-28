<!-- load file layout.php vào đây -->

<!-- dữ liệu sau sẽ đổ vào file layout.blade.php tại tag "du-lieu-do-vao-tag-main" -->
<?php $__env->startSection("du-lieu-do-vao-tag-main"); ?>
	<h1>Đây là trang chủ</h1>
	<?php echo "<h1>Hello world</h1>"; ?>
<?php $__env->stopSection(); ?>

<!-- dữ liệu sau sẽ đổ vào phần header của file layout.blade.php -->
<?php $__env->startSection("du-lieu-do-vao-phan-header"); ?>
	<h1>Dữ liệu của MVC trangchu đổ vào header</h1>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("php56.layout", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\php56_laravel\resources\views/php56/trangchu.blade.php ENDPATH**/ ?>