@extends('frontend.layout')
@section("do-du-lieu")
<?php 
	//lấy tiêu đề danh mục
	$category = DB::table("categories")->where("id", "=", $category_id)->select("name")->first();
	//lấy danh sách các bài tin có phân trang
	$categories = DB::table("news")->where("category_id", "=", $category_id)->paginate(20);
 ?>
<!-- ========================================= -->	
<style>
    a[rel="prev"],
    p.text-sm,
    div.flex-1,
    a[rel="next"],
    svg[fill="currentColor"]{display: none;}
</style>
<div class="container mt-5">
    <div class="row">
        <div class="col-7">
            <div class="bg-warning p-1 badge mb-4">
                <h3 class="text-uppercase">{{ $category->name }}</h3>
            </div>
            @foreach($categories as $rows)
                <!-- list news -->
                <div class="row">
                    <p><a class="text-decoration-none text-success fw-bold" href="{{ url('news/detail/'.$rows->id) }}">{{ $rows->name }}</a></p>
                    <div class="col-5 badge">
                        <a href="{{ url('news/detail/'.$rows->id) }}">
                            <img class="img_category" src="{{ asset('upload/news/'.$rows->photo) }}" alt="" style="max-width: 300px;">
                        </a>
                    </div>
                    <div class="col-7">
                        {!! $rows->description !!}
                    </div>
                </div>    
                <hr>             
                <!-- end list news -->
            @endforeach
            <div class="clear"></div>
            <div class="post-navi">
                <!-- phân trang -->
                {{ $categories->render() }}
            </div>
        </div>
        <div class="col-5">
            @include('frontend.advertise')
        </div>
    </div>
</div>
<!-- ========================================= -->  
@endsection