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
        <form method="post" enctype="multipart/form-data" action="<?php echo e(url('comments/create/'.$news->id)); ?>">
        <?php echo csrf_field(); ?>
        <!-- <form method="post" enctype="multipart/form-data" action=""> -->
            <div class="row d-flex justify-content-between">
                <div class="col-2 text-center">
                    <img src="<?php echo e(asset('frontend/images/customer.jpg')); ?>" width="100" alt="">
                    <div>
                        <?php if(auth()->guard()->guest()): ?>
                            <?php if(Route::has('login')): ?>
                                Người xem
                            <?php endif; ?>
                            <?php else: ?>
                            <?php echo e(Auth::user()->name); ?>

                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-10">
                    <textarea style="display: none;" name="news_id"><?php echo e($news->id); ?></textarea>
                    <textarea style="display: none;" name="customer_name">
                        <?php if(auth()->guard()->guest()): ?>
                            <?php if(Route::has('login')): ?>
                                Người xem
                                <?php
                                    $template_name = "";
                                ?>
                            <?php endif; ?>
                            <?php else: ?>
                            <?php echo e(Auth::user()->name); ?>

                            <?php 
                                $template_name = Auth::user()->name;
                            ?>
                        <?php endif; ?>
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
        <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="row mt-2">
            <div class="col-1">
                <img src="<?php echo e(asset('frontend/images/customer.jpg')); ?>" width="40" alt="">
            </div>
            <div class="col-11">
                <b><?php echo e($rows->customer_name); ?>:</b>
                <span id="description<?php echo e($rows->id); ?>"><?php echo e($rows->description); ?></span>
                <form id="formDescription<?php echo e($rows->id); ?>" method="post" action="<?php echo e(url('comments/edit/'.$news->id.'/'.$rows->id)); ?>" style="display: none;">
                    <?php echo csrf_field(); ?>
                    <textarea required placeholder="Nhập bình luận của bạn ở đây" name="description" style="width: 100%; padding: 4px;"><?php echo e($rows->description); ?></textarea>
                    <!-- <script type="text/javascript">CKEDITOR.replace('description');</script> -->
                    <input type="submit" value="Cập nhật" class="btn btn-primary mt-2">
                    <input class="btn btn-secondary mt-2" type="button" value="Hủy" onclick="cancelEditComment(<?php echo e($rows->id); ?>)">
                </form>
                <br>
                <div id="edit<?php echo e($rows->id); ?>">
                    <?php if($template_name == $rows->customer_name): ?>
                    <a class="btn text-secondary font-weight-bold" style="font-size: 14px; text-decoration: none;" onclick="editComment(<?php echo e($rows->id); ?>)">Edit</a>&nbsp;
                    <a 
                        class="btn text-secondary font-weight-bold"
                        style="font-size: 14px; text-decoration: none;" 
                        href="<?php echo e(url('comments/delete/'.$news->id.'/'.$rows->id)); ?>" 
                        onclick="return window.confirm('Are you sure?');">
                         Delete
                    </a>   
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
<!-- /comments --><?php /**PATH D:\Xampp\htdocs\project_laravel_test\resources\views/frontend/comment.blade.php ENDPATH**/ ?>