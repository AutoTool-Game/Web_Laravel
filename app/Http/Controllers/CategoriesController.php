<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//trong controller muốn sử dụng đối tượng nào thì phải khai báo ở đây
//đối tượng thao tác csdl
use DB;
//đối tượng mã hóa password
use Hash;
//muốn sử dụng model Categories thì phải khai báo ở đây -> sử dụng eloquent
use App\Models\Categories;

class CategoriesController extends Controller
{
    //read
    public function read(Request $request){
        //đối tượng Request sử dụng để lấy giá trị theo kiểu POST, GET
        //paginate(4) -> phần 4 bản ghi trên một trang
        $data = Categories::orderBy("id", "desc")->paginate(4);
        return view("admin.categories_read",["data"=>$data]);
    }
    //update - GET
    public function update(Request $request, $id){
        //tạo action để đưa vao thuộc tính action của thẻ form
        $action = url('admin/categories/update/$id');
        //lấy một bản ghi
        //first() -> lấy một bản ghi
        $record = Categories::where("id",$id)->first();
        return view('admin.categories_create_update',['record'=>$record]);
    }
    //update - POST
    public function updatePost(Request $request, $id){
        $name = $request->get('name');
        //update name
        Categories:: where("id",$id)->update(['name'=>$name]);
        //di chuyển đến url khác
        return redirect(url('admin/categories'));
    }
    //create - GET
    public function create(Request $request){
        //tao action de dua vao thuoc tinh action cua the form
        $action = url('admin/categories/create');
        return view('admin.categories_create_update');
    }
    //create - POST
    public function createPost(Request $request){
        $name = $request->get("name");
        //insert name
        Categories::insert(['name'=>$name]);
        //di chuyen den mot url khac
        return redirect(url('admin/categories'));
    }
    //delete
    public function delete(Request $request, $id){
        //lay mot ban ghi
        //first() -> lay mot ban ghi
        Categories::where("id",$id)->delete();
        //di chuyen den mot url khac
        return redirect(url('admin/categories'));
    }
}
