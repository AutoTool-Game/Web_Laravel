<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Layout</title>
</head>
<body>
<div class="wrap">
	<header>
		<h1>Header</h1>
		<!-- dữ liệu của các mvc sẽ đổ vào đây -->
		<?php echo $__env->yieldContent("du-lieu-do-vao-phan-header"); ?>
	</header>
	<nav>
		<ul>
			<li><a href="<?php echo e(url('trangchu')); ?>">Trang chủ</a></li>
			<li><a href="<?php echo url('gioithieu'); ?>">Giới thiệu</a></li>
		</ul>
	</nav>
	<content>
		<aside><h1>left</h1></aside>
		<article>
			<!-- dữ liệu của các mvc sẽ đổ vào đây -->
			<?php echo $__env->yieldContent("du-lieu-do-vao-tag-main"); ?>
		</article>
	</content>
	<footer><h1>footer</h1></footer>
</div>
<style type="text/css">
	body, h1{padding: 0px; margin: 0px;}
	.wrap{width: 1000px; margin: auto;}
	content{display: flex;}
	aside{width: 250px; height: 400px; background: yellow;}
	article{width: 750px; height: 400px; background: white;}
	header, footer{height: 100px; background: green;}
	nav{background: black; line-height: 40px;}
	nav ul{padding: 0px; margin: 0px; list-style: none;}
	nav ul li{display: inline;}
	nav ul li a{padding: 15px; text-decoration: none; color: white;}
</style>
</body>
</html><?php /**PATH D:\Xampp\htdocs\php56_laravel\resources\views/php56/layout.blade.php ENDPATH**/ ?>