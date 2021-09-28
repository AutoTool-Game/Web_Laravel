
<?php $__env->startSection("do-du-lieu"); ?>
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
                <h3 class="text-uppercase"><?php echo e($category->name); ?></h3>
            </div>
            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <!-- list news -->
                <div class="row">
                    <p><a class="text-decoration-none text-success fw-bold" href="<?php echo e(url('news/detail/'.$rows->id)); ?>"><?php echo e($rows->name); ?></a></p>
                    <div class="col-5 badge">
                        <a href="<?php echo e(url('news/detail/'.$rows->id)); ?>">
                            <img class="img_category" src="<?php echo e(asset('upload/news/'.$rows->photo)); ?>" alt="" style="max-width: 300px;">
                        </a>
                    </div>
                    <div class="col-7">
                        <?php echo $rows->description; ?>

                    </div>
                </div>    
                <hr>             
                <!-- end list news -->
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <div class="clear"></div>
            <div class="post-navi">
                <!-- phân trang -->
                <?php echo e($categories->render()); ?>

            </div>
        </div>
        <div class="col-5">
            <?php echo $__env->make('frontend.advertise', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
</div>
<!-- ========================================= -->  
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\project_laravel_test\resources\views/frontend/newscategory.blade.php ENDPATH**/ ?>