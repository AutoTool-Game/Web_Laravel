
<?php $__env->startSection("do-du-lieu"); ?>
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
                <h1 class="text-light fw-bold"><?php echo e($news->name); ?></h1>
            </div>
            <div class="mt-3">
                <img class="img_title" src="<?php echo e(asset('upload/news/'.$news->photo)); ?>" alt="">
            </div>
            <div class="post-content" style="margin-top: 10px;">
                <?php echo $news->description; ?>

                <?php echo $news->content; ?>

            </div>
            <?php echo $__env->make('frontend.comment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div class="col-5">
            <?php echo $__env->make('frontend.advertise', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\project_laravel_test\resources\views/frontend/newsdetail.blade.php ENDPATH**/ ?>