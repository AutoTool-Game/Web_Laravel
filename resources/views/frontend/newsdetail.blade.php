@extends('frontend.layout')
@section("do-du-lieu")
<?php 
	//lấy bài tin
	$news = DB::table("news")->where("id", "=", $id)->first();
 ?>
<style type="text/css">
	img{max-width: 720px;}
</style>
<div class="container mt-5">
    <div class="row">
        <div class="col-7">
            <div class="title-box bg-dark p-2">
                <h1 class="text-light fw-bold">{{ $news->name }}</h1>
            </div>
            <div class="mt-3">
                <img class="img_title" src="{{ asset('upload/news/'.$news->photo) }}" alt="">
            </div>
            <div class="post-content" style="margin-top: 10px;">
                {!! $news->description !!}
                {!! $news->content !!}
            </div>
            @include('frontend.comment')
        </div>
        <div class="col-5">
            @include('frontend.advertise')
        </div>
    </div>
</div>
@endsection