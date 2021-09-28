<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <!-- fontawesome -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<!-- bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <!-- style css -->
	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('frontend/css/style.css')); ?>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid m-0 p-0" style="height: 133px;">
        <div class="bg-dark" style="width: 100%; height: 25px;">
            <div class="container border border-dark">
                <div class="row">
                    <div class="col-3 p-0">
                        <a href="<?php echo e(url('')); ?>"><img src="<?php echo e(asset('frontend/images/sunmasthead.png')); ?>" alt="" width="310"></a>
                    </div>
                    <div class="col-9">
                        <div class="row">
                            <a class="text-light text-decoration-none text-uppercase text-start">The sun, a new uk company</a>
                        </div>
                        <div class="row">
                            <?php echo $__env->make('frontend.categories', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="col-6 text-end">
                                
                                <?php if(auth()->guard()->guest()): ?>
                                    <?php if(Route::has('login')): ?>
                                        <a class="badge text-decoration-none text-dark" style="font-size: 20px;" href="<?php echo e(route('login')); ?>">Sign in &nbsp;<i style="font-size: 40px;" class="fas fa-user-circle"></i></a>
                                    <?php endif; ?>
                                    <?php else: ?>
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        <?php echo e(Auth::user()->name); ?>

                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                                           onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">
                                            <?php echo e(__('Logout')); ?>

                                        </a>
    
                                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                                            <?php echo csrf_field(); ?>
                                        </form>
                                    </div>
                                <?php endif; ?>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Search The Sun" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                    <span class="input-group-text" id="basic-addon2"><i class="fas fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->yieldContent("do-du-lieu"); ?>
    <?php echo $__env->make('frontend.hotnews', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="container-fluid footer mt-5 bg-dark">
        <div class="container">
            <div class="row pt-3 d-flex justify-content-around">
                <div class="col-3 p-x-2">
                    <p class="text-light">News Corp is a network of leading companies in the worlds of diversified media, news, education, and information services.</p>
                    <h4 class="text-uppercase text-secondary">Follow the sun</h4>
                    <hr class="text-light">
                    <a class="badge text-light bg-primary" href="#">
                        <i style="font-size: 30px;" class="fab fa-facebook"></i>
                    </a>
                    &nbsp;
                    <a class="badge text-light bg-info" href="#">
                        <i style="font-size: 30px;" class="fab fa-twitter-square"></i>
                    </a>
                </div>
                <div class="col-3 p-x-2">
                    <h4 class="text-uppercase text-secondary">The sun</h4>
                    <hr class="text-light">
                    <div class="row">
                        <div class="col-6">
                            <ul style="list-style-type: none;">
                                <li><a class="text-decoration-none text-light fw-bold" href="">The Scottish Sun</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Dream Team</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Hols from £9.50</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Sun Savers</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Deliver My Newspaper</a></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul style="list-style-type: none;">
                                <li><a class="text-decoration-none text-light fw-bold" href="">The Irish Sun</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Sun Bingo</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Superdays</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Sun Gifts</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-2 p-x-2">
                    <h4 class="text-uppercase text-secondary">News Corp</h4>
                    <hr class="text-light">
                    <div class="row">
                        <div class="col-12 text-start">
                            <ul style="list-style-type: none;">
                                <li><a class="text-decoration-none text-light fw-bold" href="">WSJ.com</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">New York Post</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">The Australian</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">News.com.au</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Storyful</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Harper Collins</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Realtor.com</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">talkSPORT</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Times Money Mentor</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">TLS</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-2 p-x-2">
                    <h4 class="text-uppercase text-secondary">Services</h4>
                    <hr class="text-light">
                    <div class="row">
                        <div class="col-12 text-start">
                            <ul style="list-style-type: none;">
                                <li><a class="text-decoration-none text-light fw-bold" href="">Sign Up To The Sun</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">About Us</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Editorial Complaints</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Clarifications and Corrections</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">News Licensing</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Advertising</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Contact Us</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Commissioning Terms</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Help Hub</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Topic A-Z</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Cookie Settings</a></li>
                                <li><a class="text-decoration-none text-light fw-bold" href="">Contact Preferences</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="<?php echo e(asset('frontend/js/script.js')); ?>"></script>
</html><?php /**PATH D:\Xampp\htdocs\WebLaravel\resources\views/frontend/layout.blade.php ENDPATH**/ ?>