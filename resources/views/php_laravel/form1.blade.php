<!-- hàm url('duongdan') sẽ tạo url là đường dẫn ảo -->
<form method="post" action="{{ url('laydulieuform1') }}">
	<!-- phải có hàm sau thì laravel mới bắt dữ liệu được sau khi ấn nút submit -->
	@csrf
	<fieldset style="width: 300px; margin: 20px auto;">
		<legend>Form</legend>
		<input type="text" name="txt" required>
		<input type="submit" value="Submit">
	</fieldset>
	<h1>Truyền từ file web.php: {{ isset($txt) ? $txt : "" }}</h1>
	<h1>Lấy trực tiếp từ view: {{ Request::get("txt"); }}</h1>
</form>