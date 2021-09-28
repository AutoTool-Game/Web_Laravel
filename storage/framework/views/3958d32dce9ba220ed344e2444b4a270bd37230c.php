<div class="col-6">
    <div class="row" style="height: 50px;"></div>
    <ul class="nav">
        <li class="nav-item border-end border-dark">
          <a class="nav-link active text-dark text-uppercase fw-bold" aria-current="page" href="<?php echo e(url('')); ?>">Home</a>
        </li>
        <?php 
            $categories = DB::select("select * from categories order by id desc");
            $x = 1;
         ?>
        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php $x++; ?>
            <li style="<?php if($rows->id < 4): ?>display: none;<?php endif; ?>" class="nav-item border-end border-dark"><a class="nav-link text-dark text-uppercase fw-bold" href="<?php echo e(url('news/category/'.$rows->id)); ?>"><?php echo e($rows->name); ?></a></li>
            <li style="<?php if($x!=3): ?>display: none;<?php endif; ?>" class="nav-item">
                <a class="nav-link dropdown-toggle text-secondary" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    More
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li style="<?php if($rows2->id >= 4): ?>display: none;<?php endif; ?>" class="nav-item border-end border-dark">
                        <a class="dropdown-item nav-link text-dark text-uppercase fw-bold" href="<?php echo e(url('news/category/'.$rows2->id)); ?>">
                            <?php echo e($rows2->name); ?>

                        </a>
                    </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
            </li>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
</div><?php /**PATH D:\Xampp\htdocs\WebLaravel\resources\views/frontend/categories.blade.php ENDPATH**/ ?>