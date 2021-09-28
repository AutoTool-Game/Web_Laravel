<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;

class NewsController extends Controller
{
    public $model;
    //hàm tạo
    public function __construct(){
        //gán biến $model trở thành một biến object của class News
        //khi đó từ biến $model này có thể gọi các hàm trong class News
        $this->model = new News();
    }
    //lấy danh sách các bản ghi
    public function read(Request $request){
        //Lấy dữ liệu từ hàm modelRead của class News
        $data = $this->model->modelRead();
        //Gọi view, truyền dữ liệu ra view
        return view("admin.news_read", ["data"=>$data]);
    }
    //update
    public function update(Request $request, $id){
        //lấy một bản ghi
        $record = $this->model->modelGetRecord($id);
        return view("admin.news_create_update",["record"=>$record]);
    }
    //update post
    public function updatePost(Request $request, $id){
        $this->model->modelUpdate($id);
        return redirect(url('admin/news'));
    }
    //create
    public function create(Request $request){
        return view("admin.news_create_update");
    }
    //create post
    public function createPost(Request $request){
        $this->model->modelCreate();
        return redirect(url('admin/news'));
    }
    //delete
    public function delete($id){
        $this->model->modelDelete($id);
        return redirect(url('admin/news'));
    }
}
