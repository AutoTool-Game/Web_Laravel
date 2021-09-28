@extends('frontend.layout')
@section('do-du-lieu')
<?php 
	//chỉ lấy các danh mục có tin tức
	$categories = DB::select("select * from categories where id in (select category_id from news where categories.id = news.category_id) order by id desc");
 ?>
@foreach($categories as $itemCategory)
<div class="container mt-5">
    <div class="row">
        <div class="col-8">
            <?php 
                $first_news = DB::table("news")->where("category_id", "=", $itemCategory->id)->offset(0)->take(1)->first();
            ?>
            {{-- first news --}}
            <div class="row">
                <a href="{{ url('news/detail/'.$first_news->id) }}"><img style="width: 850px;" src="{{ asset('upload/news/'.$first_news->photo) }}" alt=""></a>
            </div>
            <div class="row">
                <h3><a class="text-success text-decoration-none" href="{{ url('news/detail/'.$first_news->id) }}">{{ $first_news->name }}</a></h3>
                <p>{!! $first_news->description !!}</p>
            </div>
            {{-- end first news --}}
        </div>
        <div class="col-4">
            <ul class="list-group hot_news">
                {{-- list news --}}
                <?php 
                    //lấy 4 bản ghi tiếp theo sau bản ghi đầu tiên (bàn ghi đầu tiên đã dùng ở trên)
                    $other_news = DB::table("news")->where("category_id", "=", $itemCategory->id)->offset(1)->take(4)->get();
                ?>
                @foreach($other_news as $rows)
                <li class="list-group-item">
                    <a class="text-decoration-none text-dark" href="{{ url('news/detail/'.$rows->id) }}">
                        <div class="row d-flex justify-content-between">
                            <div class="col-6">
                                <img src="{{ asset('upload/news/'.$rows->photo) }}" alt="" width="200">
                            </div>
                            <div class="col-5">
                                <p>{!! $rows->name !!}</p>
                            </div>
                        </div>
                    </a>
                </li>
                @endforeach
                {{-- end list news --}}
            </ul>
        </div>
    </div>
</div>

@endforeach

@endsection