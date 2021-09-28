<?php 
	//chỉ lấy các danh mục có tin tức
	$hot = DB::select("select * from news where hot = 1");
 ?>

<div class="container-fluid mt-3 summary">
    <div class="container">
        <div class="row mt-2 d-flex justify-content-center">
            <div class="col-6 badge bg-warning">
                <h2 class="text-uppercase text-light">Hot News</h2>
            </div>
            <div class="col-6 text-end">
                <span class="badge btn-change text-dark" id="prev"><i style="font-size: 30px;" class="fas fa-chevron-left"></i></span>
                <span class="badge btn-change text-dark" id="next"><i style="font-size: 30px;" class="fas fa-chevron-right"></i></span>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <div class="row d-flex justify-content-between">
                    <?php $x = 0 ?>
                    @foreach($hot as $rows)
                    <div class="col-3 slide" idx="<?php echo $x; $x++; ?>">
                        <a class="text-decoration-none" href="{{ url('news/detail/'.$rows->id) }}">
                            <img src="{{ asset('upload/news/'.$rows->photo) }}" width="300" height="200">
                            <p class="text-danger">{{ $rows->name }}</p>
                            {{-- <p class="text-dark">Qualcomm sẽ cùng Bkav đưa Bphone 2 ra thị trường quốc tế</p> --}}
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>