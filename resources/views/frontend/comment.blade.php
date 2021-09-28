<?php 
	//lấy bài tin
	$news = DB::table("news")->where("id", "=", $id)->first();
 ?>
<!-- comments -->
<div class="row mt-3">
    <div class="col-12">
        <h3>Bình luận bài viết</h3>
        <hr>
    </div>
    <div class="col-12">
        <form method="post" enctype="multipart/form-data" action="{{ url('comments/create/'.$news->id) }}">
        @csrf
        <!-- <form method="post" enctype="multipart/form-data" action=""> -->
            <div class="row d-flex justify-content-between">
                <div class="col-2 text-center">
                    <img src="{{ asset('frontend/images/customer.jpg') }}" width="100" alt="">
                    <div>
                        @guest
                            @if(Route::has('login'))
                                Người xem
                            @endif
                            @else
                            {{ Auth::user()->name }}
                        @endguest
                    </div>
                </div>
                <div class="col-10">
                    <textarea style="display: none;" name="news_id">{{ $news->id }}</textarea>
                    <textarea style="display: none;" name="customer_name">
                        @guest
                            @if(Route::has('login'))
                                Người xem
                                <?php
                                    $template_name = "";
                                ?>
                            @endif
                            @else
                            {{ Auth::user()->name }}
                            <?php 
                                $template_name = Auth::user()->name;
                            ?>
                        @endguest
                    </textarea>
                    <textarea required placeholder="Nhập bình luận của bạn ở đây" name="description" style="width: 100%; padding: 4px; min-height: 100px;"></textarea>
                    <input type="submit" value="Gửi" class="btn btn-primary mt-2">
                </div>
            </div>
        </form>
    </div>
    <div class="col-12 mt-5">
        <h5>Những ý kiến khác</h5>
        <hr>
        <?php 
            $comments = DB::select("select * from comments where news_id = $news->id");
        ?>
        @foreach($comments as $rows)
        <div class="row mt-2">
            <div class="col-1">
                <img src="{{ asset('frontend/images/customer.jpg') }}" width="40" alt="">
            </div>
            <div class="col-11">
                <b>{{ $rows->customer_name }}:</b>
                <span id="description{{$rows->id}}">{{ $rows->description }}</span>
                <form id="formDescription{{$rows->id}}" method="post" action="{{ url('comments/edit/'.$news->id.'/'.$rows->id) }}" style="display: none;">
                    @csrf
                    <textarea required placeholder="Nhập bình luận của bạn ở đây" name="description" style="width: 100%; padding: 4px;">{{ $rows->description }}</textarea>
                    <!-- <script type="text/javascript">CKEDITOR.replace('description');</script> -->
                    <input type="submit" value="Cập nhật" class="btn btn-primary mt-2">
                    <input class="btn btn-secondary mt-2" type="button" value="Hủy" onclick="cancelEditComment({{$rows->id}})">
                </form>
                <br>
                <div id="edit{{$rows->id}}">
                    @if($template_name == $rows->customer_name)
                    <a class="btn text-secondary font-weight-bold" style="font-size: 14px; text-decoration: none;" onclick="editComment({{$rows->id}})">Edit</a>&nbsp;
                    <a 
                        class="btn text-secondary font-weight-bold"
                        style="font-size: 14px; text-decoration: none;" 
                        href="{{ url('comments/delete/'.$news->id.'/'.$rows->id) }}" 
                        onclick="return window.confirm('Are you sure?');">
                         Delete
                    </a>   
                    @endif
                </div>
            </div>
        </div>
        @endforeach
        <script type="text/javascript">
            function editComment(id){
                document.getElementById("description" + id).setAttribute('style', 'display: none');
                document.getElementById('edit' + id).setAttribute('style', 'display: none');
                document.getElementById('formDescription' + id).setAttribute('style', 'display: block');
            }
            function cancelEditComment(id){
                document.getElementById("description" + id).setAttribute('style', 'display: inline-block');
                document.getElementById('edit' + id).setAttribute('style', 'display: block');
                document.getElementById('formDescription' + id).setAttribute('style', 'display: none');
            }
        </script>
    </div>
</div>
<!-- /comments -->