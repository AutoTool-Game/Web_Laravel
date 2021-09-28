<!-- load file layout.blade.php vao day -->

<?php $__env->startSection("do-du-lieu"); ?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="<?php echo e(url('admin/categories/create')); ?>" class="btn btn-primary">Add category</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List Category</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Name</th>
                    <th style="width:100px;"></th>
                </tr>
                <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rows): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($rows->name); ?></td>
                    <td style="text-align:center;">
                        <a href="<?php echo e(url('admin/categories/update/'.$rows->id)); ?>">Edit</a>&nbsp;
                        <a href="<?php echo e(url('admin/categories/delete/'.$rows->id)); ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <!-- ham render su dung de phan trang -->
            <?php echo e($data->render()); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("admin.layout", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\php56_laravel\resources\views/admin/categories_read.blade.php ENDPATH**/ ?>