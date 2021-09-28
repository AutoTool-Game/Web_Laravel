<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;
    //khai báo table để sử dụng
    protected $table = "categories";
    //nếu trong table categories không có 2 cột create_at và update_at thì phải khai báo dòng bên dưới
    public $timestamps = false;
}
