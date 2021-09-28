<div class="col-6">
    <div class="row" style="height: 50px;"></div>
    <ul class="nav">
        <li class="nav-item border-end border-dark">
          <a class="nav-link active text-dark text-uppercase fw-bold" aria-current="page" href="{{ url('') }}">Home</a>
        </li>
        <?php 
            $categories = DB::select("select * from categories order by id desc");
            $x = 1;
         ?>
        @foreach($categories as $rows)
        <?php $x++; ?>
            <li style="@if($rows->id < 4)display: none;@endif" class="nav-item border-end border-dark"><a class="nav-link text-dark text-uppercase fw-bold" href="{{ url('news/category/'.$rows->id) }}">{{ $rows->name }}</a></li>
            <li style="@if($x!=3)display: none;@endif" class="nav-item">
                <a class="nav-link dropdown-toggle text-secondary" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    More
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    @foreach($categories as $rows2)
                    <li style="@if($rows2->id >= 4)display: none;@endif" class="nav-item border-end border-dark">
                        <a class="dropdown-item nav-link text-dark text-uppercase fw-bold" href="{{ url('news/category/'.$rows2->id) }}">
                            {{ $rows2->name }}
                        </a>
                    </li>
                    @endforeach
                </ul>
            </li>
        @endforeach
    </ul>
</div>