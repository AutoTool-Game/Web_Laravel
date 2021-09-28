<!-- load file layout.blade.php vao day -->

<?php $__env->startSection("do-du-lieu"); ?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="<?php echo e(url('admin/news/create')); ?>" class="btn btn-primary">Add news</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading p-2 bg-info border border-info rounded-top text-light">List news</div>
        <div class="panel-body bg-light border border-info rounded-bottom p-3">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width: 100px;">Photo</th>
                    <th>Title</th>
                    <th style="width: 200px;">Category</th>
                    <th style="width: 100px;">Hot news</th>
                    <th style="width: 100px;"></th>
                </tr>
                <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td>
                        <?php if(file_exists('upload/news/'.$rows->photo) && $rows->photo != ""): ?>
                            <img src="<?php echo e(asset('upload/news/'.$rows->photo)); ?>" style="width: 100px;">
                        <?php endif; ?>
                    </td>
                    <td><?php echo e($rows->name); ?></td>
                    <td>
                        <!-- có thể thực hiện truy vấn trực tiếp tại view -->
                        <?php 
                            $category = DB::table("categories")->where("id","=",$rows->category_id)->first();
                            echo isset($category->name) ? $category->name : "";
                         ?>
                    </td>
                    <td style="text-align:center;">
                        <?php if($rows->hot == 1): ?>
                            <span class="fa fa-check"></span>
                        <?php endif; ?>
                    </td>
                    <td style="text-align:center;">
                        <a style="font-size: 14px; text-decoration: none;" href="<?php echo e(url('admin/news/update/'.$rows->id)); ?>">Edit</a>&nbsp;
                        <a style="font-size: 14px; text-decoration: none;" href="<?php echo e(url('admin/news/delete/'.$rows->id)); ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
                div.hidden{display: none;}
            </style>
            <!-- ham render su dung de phan trang -->
            <?php echo e($data->render()); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("admin.layout", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\project_laravel_test\resources\views/admin/news_read.blade.php ENDPATH**/ ?>