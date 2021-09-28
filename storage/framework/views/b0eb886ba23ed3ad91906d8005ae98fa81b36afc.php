
<?php $__env->startSection('do-du-lieu'); ?>
<?php 
	//chỉ lấy các danh mục có tin tức
	$categories = DB::select("select * from categories where id in (select category_id from news where categories.id = news.category_id) order by id desc");
 ?>
<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $itemCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="container mt-5">
    <div class="row">
        <div class="col-8">
            <?php 
                $first_news = DB::table("news")->where("category_id", "=", $itemCategory->id)->offset(0)->take(1)->first();
            ?>
            
            <div class="row">
                <a href="<?php echo e(url('news/detail/'.$first_news->id)); ?>"><img style="width: 850px;" src="<?php echo e(asset('upload/news/'.$first_news->photo)); ?>" alt=""></a>
            </div>
            <div class="row">
                <h3><a class="text-success text-decoration-none" href="<?php echo e(url('news/detail/'.$first_news->id)); ?>"><?php echo e($first_news->name); ?></a></h3>
                <p><?php echo $first_news->description; ?></p>
            </div>
            
        </div>
        <div class="col-4">
            <ul class="list-group hot_news">
                
                <?php 
                    //lấy 4 bản ghi tiếp theo sau bản ghi đầu tiên (bàn ghi đầu tiên đã dùng ở trên)
                    $other_news = DB::table("news")->where("category_id", "=", $itemCategory->id)->offset(1)->take(4)->get();
                ?>
                <?php $__currentLoopData = $other_news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li class="list-group-item">
                    <a class="text-decoration-none text-dark" href="<?php echo e(url('news/detail/'.$rows->id)); ?>">
                        <div class="row d-flex justify-content-between">
                            <div class="col-6">
                                <img src="<?php echo e(asset('upload/news/'.$rows->photo)); ?>" alt="" width="200">
                            </div>
                            <div class="col-5">
                                <p><?php echo $rows->name; ?></p>
                            </div>
                        </div>
                    </a>
                </li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
            </ul>
        </div>
    </div>
</div>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\project_laravel_test\resources\views/frontend/home.blade.php ENDPATH**/ ?>