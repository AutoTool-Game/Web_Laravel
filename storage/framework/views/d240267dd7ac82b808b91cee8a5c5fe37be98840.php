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
                    <?php $__currentLoopData = $hot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-3 slide" idx="<?php echo $x; $x++; ?>">
                        <a class="text-decoration-none" href="<?php echo e(url('news/detail/'.$rows->id)); ?>">
                            <img src="<?php echo e(asset('upload/news/'.$rows->photo)); ?>" width="300" height="200">
                            <p class="text-danger"><?php echo e($rows->name); ?></p>
                            
                        </a>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</div><?php /**PATH D:\Xampp\htdocs\project_laravel\resources\views/frontend/hotnews.blade.php ENDPATH**/ ?>