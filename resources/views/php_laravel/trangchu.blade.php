<!-- load file layout.php vào đây -->
@extends("php56.layout")
<!-- dữ liệu sau sẽ đổ vào file layout.blade.php tại tag "du-lieu-do-vao-tag-main" -->
@section("du-lieu-do-vao-tag-main")
	<h1>Đây là trang chủ</h1>
	<?php echo "<h1>Hello world</h1>"; ?>
@endsection

<!-- dữ liệu sau sẽ đổ vào phần header của file layout.blade.php -->
@section("du-lieu-do-vao-phan-header")
	<h1>Dữ liệu của MVC trangchu đổ vào header</h1>
@endsection