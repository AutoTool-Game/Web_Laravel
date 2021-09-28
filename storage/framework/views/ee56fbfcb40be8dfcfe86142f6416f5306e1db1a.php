<!-- load file layout.php vào đây -->

<!-- dữ liệu sau sẽ đổ vào file layout.blade.php tại tag "du-lieu-do-vao-tag-main" -->
<?php $__env->startSection("du-lieu-do-vao-tag-main"); ?>
	<h1>Đây là giới thiệu</h1>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("php56.layout", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\php56_laravel\resources\views/php56/gioithieu.blade.php ENDPATH**/ ?>